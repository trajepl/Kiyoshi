<?php
namespace Home\Controller;

class IndexController extends BaseController {
	public function _intialize() {
	}

    public function index() {	
        $username = session('username');
        $adminCnt = count(M('administrator')->where("username='%s'", $username)->select());
        $isAdmin = $adminCnt > 0 ? ture : false;
        
        $this->assign('isAdmin', $isAdmin);
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
 
    public function exportData() {

    }

    public function insertItem() {

    }

    public function upload() {
        M('dataset')->where("1=1")->delete();
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

        $flag = true;
        //循环获取表中的数据，$j表示当前行，从哪行开始读取数据，索引值从0开始
        for($j = 2; $j <= $allRow; $j++){
            $temp = true;
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
            
            $temp = $this->install_data($strs);
        }
      
        //}
        $this->success("Insert success.", "", 2);
    }

    public function install_data($str){
        $Val = M('dataset');
        $data['id'] = $str[0];
        $data['item']  = $str[1];
        $data['point']  = $str[2];
        $data['lose']  = ($str[3]=='')?0:$str[3];
        $data['get']  = ($str[4]=='')?1:$str[4];
        $data['domain']  = $str[5];
        $data['department']  = $str[6];

        if(count($Val->where("id='%s'", $data['id'])->select()) > 0) {
            return true;
        }
        else {
            return $Info = $Val->add($data);
        }
    }
}