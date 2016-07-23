$(document).ready(function () {
    $(".submit").click(function() {
    	var system_id = $("#managers-add-td1").text().trim();
    	if(system_id == '') {
    		alert("添加失败！");
    		return;
    	}

    	var checkboxList = $("#userList input[type='checkbox']");
    	var idList = "";
    	for(var i = 0;i < checkboxList.length;i++) {
    		if($(checkboxList[i]).prop("checked")) {
    			idList += $(checkboxList[i]).parent("td").attr("data-id") + " ";
    		}
    	}

    	if(idList.trim().length === 0) {
    		alert("请先选中对应的管理员！")
    		return;
    	}

    	$.post(
    		"../Index/additionSubmit",
    		{
    			idList:idList,
    			system_id:system_id
    		},
    		function(data) {
    			if(data.status == 1) {
    				alert("添加成功！");
    				history.go(0);
    			}
    			else {
    				alert("添加失败！");
    			}
    		}
    	);
    });

    $(".reset").click(function() {
    	$("#managers-addition").css('display','none');
    });

    $('#userList').DataTable({
    	bLengthChange:false,
    	bInfo:false,
    	iDisplayLength: 20,
    	language: {
            "sProcessing": "处理中...",
            "sLengthMenu": "显示 _MENU_ 项结果",
            "sZeroRecords": "没有匹配结果",
            "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
            "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
            "sInfoPostFix": "",
            "sSearch": "",
            "sUrl": "",
            "sEmptyTable": "表中数据为空",
            "sLoadingRecords": "载入中...",
            "sInfoThousands": ",",
            "oPaginate": {
                "sFirst": "首页",
                "sPrevious": "上页",
                "sNext": "下页",
                "sLast": "末页"
            },
            "oAria": {
                "sSortAscending": ": 以升序排列此列",
                "sSortDescending": ": 以降序排列此列"
            }
        }
    });

    $(".dataTables_filter input[type='search']").on('input propertychange',function() {
    	if($(this).val().trim() != "") {
    		$("#userList").removeClass("none");
    	}
    	else {
    		$("#userList").addClass("none");
    	}
    });

    $(".add-managers").click(function() {
    	$("#managers-addition").fadeIn(300);
    	$("#managers-add-td1").text($(this).attr('data-system-id'));
    	$("#managers-add-td2").text($(this).attr('data-system-name'));
    	$("#managers-addition .dataTables_filter input[type='search']").focus();
    });
})
