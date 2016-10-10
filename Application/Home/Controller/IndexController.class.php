<?php
namespace Home\Controller;

class IndexController extends BaseController {
    public function _initialize() {
        
    }

    public function index() {
        $username = session('username');
        $adminCnt = count(M('administrator')->where("username='%s'", $username)->select());
        $isAdmin = $adminCnt > 0 ? ture : false;
        
        $zoneInfo = M('zone')->where('id!=0')->select();
        $this->assign('isAdmin', $isAdmin)
            ->assign('zoneInfo', $zoneInfo);

        $this->display();
    }

    public function logout() {
    	session(null);
		$this->redirect('Login/index');
    }

    public function addUser() {
        $username = I("username");
        $password = I("password");

        $isUnique = M('adminuser')->where("username='%s'", $username)->select();
        if(count($isUnique)!=0) $this->error("用户已存在！");
        
        $data['username'] = $username;
        
        if(trim($password) == '') {
            $res = M('adminuser')->add($data);
        } else {
            $data['password'] = md5($password);
            $res = M('adminuser')->add($data);
        }
         if($res === false) {
            $this->error("添加失败！");
        }
            $this->success("添加成功！");
    }


    public function disone() {
        $id=I('id');
        $info = M('zone')->where("id='%s'", $id)->find();
        session('zoneId', $id);

        $this->assign('info', $info);
        $this->display();
    }

    public function insertItem() {
        // To do...
    }

    public function upload() {
        $res = M('dataset')->where("zone='%s'", session('zoneId'))->delete();
        $res = M('dataset_temp')->where("zone='%s'", session('zoneId'))->delete();

        if(!empty($_FILES)) { 
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize   =     1000000000  ;// 设置附件上传大小
            $upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
            $upload->exts      =     array('xls', 'xlsx', 'ods');
            // $upload->savePath  =     $filePath.'/'; // 设置附件上传（子）目录
            $info   =   $upload->uploadOne($_FILES['dataset']);

            if($info === false) {// 上传错误提示错误信息
                $this->error("上传错误：".$upload->getError(),"",2);
            }

            //判断文件是否为excel格式
            M('dataset')->where("zone=''")->delete(); //?
            $exts = $info['ext'];
            $filename = './Uploads/'.$info['savepath'].$info['savename'];
            $this->import_data($filename, $exts);
        }
    }

    protected function import_data($filename, $exts='xls'){
        $flag = true;
        //导入PHPExcel类库，因为PHPExcel没有用命名空间，只能inport导入
        import("Org.Util.PHPExcel");

        //创建PHPExcel对象，注意，不能少了\
        $PHPExcel=new \PHPExcel();

        //如果excel文件后缀名为.xls，导入这个Excel5类否则导入Excel2007
        if($exts == 'xls'){

            import("Org.Util.PHPExcel.Reader.Excel5");

            $PHPReader=new \PHPExcel_Reader_Excel5();

        }else if($exts == 'xlsx'){

            import("Org.Util.PHPExcel.Reader.Excel2007");

            $PHPReader=new \PHPExcel_Reader_Excel2007();

        }

        //载入上传的文件
        $PHPExcel=$PHPReader->load($filename);

        //获取表中的第一个工作表，如果要获取第二个，把0改为1，依次类推
        $sheetCount = $PHPExcel->getSheetCount();

        //for($i = 0; $i < $sheetCount; $i++) {

        $currentSheet=$PHPExcel->getSheet(0);

        //获取工作表总列数
        $tmp = 'A';
        while(!empty($PHPExcel->getActiveSheet()->getCell($tmp.'1')->getValue()))
            $tmp ++;

        $allColumn = $tmp;
        //获取工作表总行数
        $allRow=$currentSheet->getHighestRow();

        $data = [];
        //循环获取表中的数据，$j表示当前行，从哪行开始读取数据，索引值从0开始
        for($j = 2; $j <= $allRow; $j++){
            $str="";

            //从A列读取数据

            for($k = 'A'; $k < $allColumn; $k++) {
                if($k < 'G')
                    $str .= $PHPExcel->getActiveSheet()->getCell($k.$j)->getValue().',';
                else 
                    $str .= $PHPExcel->getActiveSheet()->getCell($k.$j)->getValue().' ';
            }

            //获取的字符串截取成数组
            $strs = explode(",",$str);
            

            if($temp = $this->install_data($strs))
                array_push($data, $temp);
        }
        //}
        $zoneName = M('zone')->where("id='%d'", session("zoneId"))->field('zone')->find();

        $this->assign("zoneName", $zoneName)
            -> assign("data", $data);

        // 创建视图
        $this->createView();

        $this->display("result");
    }

    public function install_data($str){
        $Val = M('dataset');
        $data['id'] = $str[0];
        $data['item']  = trim($str[1]);
        $data['branch_item'] = 0;
        $data['point']  = $str[2];
        $data['lose']  = ($str[3]=='')?0:$str[3];
        $data['get']  = ($str[4]=='')?1:$str[4];
        $data['get'] -= $data['lose'];
        $data['domain']  = trim($str[5]);
        $data['department']  = explode(' ', trim($str[6]));
        $data['zone']  = session('zoneId'); 
        $temp_data = $data;
        $changeFields=['item', 'domain', 'department'];

        $data_department['id'] = $data['id'];
        $data_department['item'] = trim($str[1]);
        $data_department['get'] = $data['get'];
        $data_department['zone']  = $data['zone']; 

        # 替换数字字典中的字符串
        foreach ($changeFields as $value) {

            if($value =='item' && is_numeric(substr($data[$value], -1))) {
                $number_stop = -1;
                while(is_numeric(substr($data[$value], $number_stop))) {
                    $number_stop--;
                }
                $data['branch_item'] = substr($data[$value], ++$number_stop);
                $data[$value] = M($value)->where("$value ='%s'", substr($data[$value], 0, $number_stop))->field('id')->select()[0]['id'];
                if($data[$value]==NULL) $data[$value] = 0;
            } else if($value == 'department') {
                $temp = '';
                foreach ($data[$value] as $dept) {
                    $department = M($value)->where("$value ='%s'",$dept)->field('id')->select()[0]['id'].' ';
                    $data_department['department'] = $department;
                    if($department != null && $department != 0)
                        $res_department = M('dataset_temp') -> add($data_department);

                    $temp .= $department;
                }
                $data[$value] = trim($temp);
                if($data[$value]==NULL) $data[$value] = 0;    
            } else {
                $data[$value] = M($value)->where("$value ='%s'",$data[$value])->field('id')->select()[0]['id'];
                if($data[$value]==NULL) $data[$value] = 0;
            }
        }

        
        if(count($Val->where("id='%s' and zone='%s'", $data['id'], session('zoneId'))->select()) > 0) {
            return NULL;
        }
        else {
            $Info = $Val->add($data);
            return $temp_data;
        }
    }

    public function createView() {
        $viewName = M() -> query("show table status where comment='view'");

        foreach ($viewName as $entry) {
            if($entry['name'] == 'branch_item_domain')
                M()->execute("DROP VIEW branch_item_domain;");
            else if($entry['name'] == 'branch_res')
                M()->execute("drop view branch_res;");
            else if($entry['name'] == 'branch_item_department')
                M()->execute("drop view branch_item_department;");
        }
        
        $viewCreate = "CREATE VIEW branch_item_domain AS SELECT
                        b.item,
                        branch_item,
                        c.domain,
                        count(*) as quota_item,
                        avg(a.get) AS avg_domain
                    FROM
                        `dataset` a
                    JOIN `item` b ON a.item = b.id
                    JOIN `domain` c ON a.domain = c.id
                    WHERE
                        a.item > 0 AND a.zone=".
                    session('zoneId')
                    ." AND c.id > 0
                    GROUP BY
                        a.domain,
                        a.item,
                        branch_item
                    ORDER BY
                        a.item;";
                            
        M()->execute($viewCreate);  
        
        $viewCreate = "CREATE VIEW branch_res AS SELECT
                                    b.item,
                                    a.branch_item,
                                    (avg(a.get)) AS avg_score,
                                    a.zone
                                FROM
                                    `dataset` a
                                JOIN `item` b ON a.item = b.id
                                WHERE
                                    b.id > 0 and a.zone=".session('zoneId')."
                                GROUP BY
                                    a.item,
                                    a.branch_item
                                ORDER BY
                                    a.item DESC;";
        M()->execute($viewCreate);

        $viewCreate = "CREATE VIEW branch_item_department AS SELECT
                            item,
                            count(*) AS quota,
                            avg(dataset_temp.get) AS avg,
                            department
                        FROM
                            dataset_temp
                        WHERE
                            zone = ".
                        session('zoneId')
                        ." 
                        GROUP BY
                            item,
                            department
                        ORDER BY
                            department;";
        M()->execute($viewCreate); 


    }

    public function resItem() {
        $queryString = "SELECT
                            item,
                            count(*) AS quota,
                            sum(avg_score) AS final_score,
                            sum(avg_score) / count(*) AS pass_rate,
                            zone
                        FROM
                            branch_res
                        WHERE 
                            zone = ".session('zoneId')."
                        GROUP BY
                            branch_res.item
                        ORDER BY
                            pass_rate DESC;";
        $res = M()->query($queryString);
        
        M('res_item')->where("zone='%d'", session('zoneId'))->delete();

        M('result')->where("zone='%d'", session('zoneId'))->delete();

        $data_quota = $data_final_score = 0;
        for($i = 0; $i < count($res); $i++) {
            $res[$i]['order'] = $i + 1;
            $res[$i]['zone'] = session('zoneId');
            M('res_item')->add($res[$i]);

            $res[$i]['pass_rate'] = 100 * number_format($res[$i]['pass_rate'], 4, '.','') .'%';
            $res[$i]['final_score'] = number_format($res[$i]['final_score'], 3, '.','');

            $data_quota += $res[$i]['quota'];
            $data_final_score += $res[$i]['final_score'];
        }

        $data=array();
        
        for($j = 0; $j < 2; $j++) {
            if($j == 0) {
                $data['res_item'] = '文明程度指数';
                $data['quota'] = $data_quota;
                $data['final_score'] = $data_final_score;
                $data['pass_rate'] = $data_final_score / $data_quota;
                $data['zone'] = session('zoneId'); 
                M('result')->add($data);
            } else {
                $data = array();
                $data['res_item'] = '未成年人思想道德建设';
                $data['zone'] = session('zoneId'); 
                M('result')->add($data);
            }
            
        }

        $this->assign('result', $res);
        $this->display();
    }

    /*public function resItemModify() {
        $data = I('data');
        $item = I('item');
        $data = json_decode(html_entity_decode($data),true);
        $res = M('res_item')->where("item = %s",$item)->save($data);

        if($res === false) {
            $this->error("修改失败！");
        }
        $this->success("修改成功！");
    }*/

    public function resDomain() {
         $res = M()->query("SELECT
                        domain,
                        count(*) as quota,
                        sum(avg_domain) as final_score,
                        sum(avg_domain)/count(*) AS pass_rate
                    FROM
                        branch_item_domain
                    GROUP BY
                        domain
                    ORDER BY
                        pass_rate DESC;");
        
        M('res_domain')->where("zone='%d'", session('zoneId'))->delete();

        for($i = 0; $i < count($res); $i++) {
            $res[$i]['order'] = $i + 1;
            $res[$i]['zone'] = session('zoneId');
            M('res_domain')->add($res[$i]);

            $res[$i]['pass_rate'] = 100 * number_format($res[$i]['pass_rate'], 4, '.','') .'%';
            $res[$i]['final_score'] = number_format($res[$i]['final_score'], 3, '.','');
        }
        
        $this->assign('result', $res);
        $this->display();
    }

    public function resDepartment() {
        $str = "SELECT
                b.department,
                sum(a.avg) AS final_score,
                count(*) as quota,
                sum(a.avg)/count(*) as pass_rate

            FROM
                `branch_item_department` a
            JOIN department b ON a.department = b.id
            GROUP BY
                a.department
            ORDER BY
                pass_rate DESC";

        M('res_department')->where("zone='%d'", session('zoneId'))->delete();
        $res = M()->query($str);

        for($i = 0; $i < count($res); $i++) {
            $res[$i]['order'] = $i + 1;
            $res[$i]['zone'] = session('zoneId');
            M('res_department')->add($res[$i]);
            $res[$i]['pass_rate'] = 100 * number_format($res[$i]['pass_rate'], 4, '.','') .'%';
            $res[$i]['final_score'] = number_format($res[$i]['final_score'], 3, '.','');
        }
        
        
        $this->assign('result', $res);
        $this->display();
    }

    public function returnResultDomainItem() {
        $res_tmp = M()->query("SELECT
                        item,
                        domain,
                        count(*) as quota,
                        sum(avg_domain) as final_score
                    FROM
                        branch_item_domain
                    GROUP BY
                        item;");
        
        $res=array(array());
        $sum_score = $sum_quota = array(0);
        $flag_first = true;
        foreach ($res_tmp as $item) {
            if(is_null($res[$item['domain']]['final_score'])) {
                $res[$item['domain']]['final_score'] = 0;
                $res[$item['domain']]['quota'] = 0;
            }

            $res[$item['domain']][$item['item']] = number_format($item['final_score'], 3, '.','');
            $res[$item['domain']]['final_score'] += $item['final_score']; 
            $res[$item['domain']]['quota'] += $item['quota'];
        }
        
        foreach ($res as $key=>$value) {
            $tmp = $res[$key]['final_score']/$res[$key]['quota'];
            $res[$key]['pass_rate'] = 100*number_format($tmp, 4, '.', '') . '%';
            $res[$key]['final_score'] = number_format($res[$key]['final_score'], 3, '.','');
        }

        return $res;
    }

    public function resDomainItem() {
        $res = $this->returnResultDomainItem();

        $domainEntry = M() -> query("SELECT b.domain FROM `dataset` a join domain b 
            on a.domain = b.id where a.domain > 0 and a.zone=".session('zoneId')." 
            group by domain;");
        $itemEntry = M() -> query("SELECT b.item FROM `dataset` a join item b 
            on a.item = b.id where a.item > 0 and a.zone=".session('zoneId')." 
            group by a.item;");

        $itemEntry[]=array('item'=>'final_score');
        $itemEntry[]=array('item'=>'quota');
        $itemEntry[]=array('item'=>'pass_rate');

        $this->assign('result', $res)
            ->assign('domainEntry', $domainEntry)
            ->assign('itemEntry', $itemEntry);
        $this->display();
    }

    public function format_float(&$res) {
        foreach ($res as $key => $value) {
            $tmp = 100 * number_format($res[$key]['pass_rate'], 4,'.','') . '%';
            $res[$key]['pass_rate'] = $tmp;
        }
        
    }
    public function report() {
        $zone_name = M('zone') -> where("id='%d'", session('zoneId')) -> select()[0]['zone'];
        $result = M('result') -> where("zone='%d'", session('zoneId')) -> select();
        $res_item = M('res_item')->where("zone='%d'", session('zoneId')) -> select();
        $res_domain = M('res_domain')->where("zone='%d'", session('zoneId')) -> select();
        $res_department = M('res_department')->where("zone='%d'", session('zoneId')) -> select();

        $res_domain_item = $this->returnResultDomainItem();
              $domainEntry = M() -> query("SELECT b.domain FROM `dataset` a join domain b on a.domain = b.id where a.domain > 0 and a.zone=".session('zoneId')." group by domain;");
        $itemEntry = M() -> query("SELECT b.item FROM `dataset` a join item b on a.item = b.id where a.item > 0 and a.zone=".session('zoneId')." group by a.item;");
        $itemEntry[]=array('item'=>'final_score');
        $itemEntry[]=array('item'=>'quota');
        $itemEntry[]=array('item'=>'pass_rate');



        $this->format_float($result);
        $this->format_float($res_item);
        $this->format_float($res_domain);
        $this->format_float($res_department);


        $this->assign('result', $result)
            ->assign('res_item', $res_item)
            ->assign('res_domain', $res_domain)
            ->assign('res_department', $res_department)
            ->assign('res_domain_item', $res_domain_item);
        $this->assign('domainEntry', $domainEntry)
            ->assign('itemEntry', $itemEntry)
            ->assign('zoneName', $zone_name);
         // dump($result);
         // dump($res_item);
         // dump($res_domain);
         // dump($res_department);
         // dump($res_domain_item);
        $this->display();
    }

    public function dataDir() {
        $data = M("data_dir")->select();
        
        $this->assign('data', $data);
        $this->display();
    }

    public function dataModify() {
        $tableName = I("tableName");

        $fields_tmp = M()->db()->getFields($tableName);
        $i = 0;
        foreach ($fields_tmp as $key => $value) {
            $fields[$i++] = $key;
        }
        if($tableName == 'domain')
            $data = M($tableName) ->where("id!=0 and zone='%s'", session('zoneId'))->select();
        else
            $data = M($tableName) ->where("id!=0")->select();
     
        $this->assign("table", $tableName)
            ->assign("fields", $fields[1])
            ->assign("data", $data);
        $this->display();
    }

    public function dataItemModify() {
        $data=I('data');
        $tableName = I('tableName');
        $data = json_decode(html_entity_decode($data),true);
        $data['zone'] = session('zoneId');

        $res = M($tableName)->where("id='%s'", $data['id'])->save($data);
        if($res == false)
            $this->error();
        $this->success();
    }

    public function dataItemAdd() {
        $item=I('item');
        $dataField = I('dataField');
        $tableName = I('tableName');
        $data[$dataField] = $item;
        $data['zone'] = session('zoneId');

        $res = M($tableName)->add($data);

        if($res == false)
            $this->error();
        $this->success();
    }

    public function changeState() {
        $data['id'] = I('id');
        $tableName = I('tableName');
        $res = M($tableName)->where("id='%s'", $data['id'])->delete();

        if($res == false)
            $this->error();
        $this->success();

    }

}

