

//1.tabId表格id 2.oddColor奇数行样式 3.evenColor偶数行样式 4.hoverClass鼠标移上样式
function senfe(tabId, oddColor, evenColor, hoverClass) {
    var table = $("#" + tabId);
    $("#" + tabId + " tbody tr:odd td").addClass(oddColor);
    $("#" + tabId + " tbody tr:even td").addClass(evenColor);
    $("#" + tabId + " tbody tr").hover(
        function () {
            $(this).children("td").addClass(hoverClass);
        },
        function () {
            $(this).children("td").removeClass(hoverClass);
        }
    );
    }

//全选
function GetAllCheckBox(CheckAll) {
    var items = document.getElementsByTagName("input");
    for (i = 0; i < items.length; i++) {
        if (items[i].type == "checkbox") {
            items[i].checked = CheckAll.checked;
        }
    }
}


