<?php
return array(
    'DB_TYPE' =>  'mysql',
    'DB_PORT'  =>  '3306',
    'DB_HOST' =>  '127.0.0.1',
    
    // 'DB_NAME' =>  'course',
    'DB_NAME' =>  'soochow',
    'DB_USER' =>  'root',
    'DB_PWD'  =>  'root',
    // 'DB_PREFIX' => 'tk_', // 数据库表前缀
    'LANG_SWITCH_ON' => true,   // 开启语言包功能
    'SHOW_PAGE_TRACE' => false,  //开启调试模式
    'URL_CASE_INSENSITIVE' =>true,   //关闭大小写敏感
    'LOG_RECORD' => true, // 开启日志记录
    'LOG_LEVEL'  =>'EMERG,ALERT,CRIT,ERR', // 只记录EMERG ALERT CRIT ERR 错误
    'DATA_CACHE_TIME'=>'600',              //数据缓存时间设置为60s
    'DB_SQL_BUILD_CACHE' => true,         //添加sql解析缓存
    'DB_SQL_BUILD_QUEUE' => 'xcache',     //缓存方式
    'DB_SQL_BUILD_LENGTH' => 30, // SQL缓存的队列长度
    'view_filter' => array('Behavior\TokenBuild'),    //开启表单令牌功能，防止表单的重复提交
    // 'URL_HTML_SUFFIX' => ".php",    

    'TMPL_PARSE_STRING' => array(
        '__STATIC__' => __ROOT__ . '/Static',
        '__UPLOADS__' => __ROOT__ . '/Uploads',
        '__PLUGINS__' => __ROOT__ . '/Public/plugins',
    ) 
);
