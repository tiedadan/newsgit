

//1.tabId���id 2.oddColor��������ʽ 3.evenColorż������ʽ 4.hoverClass���������ʽ
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

//ȫѡ
function GetAllCheckBox(CheckAll) {
    var items = document.getElementsByTagName("input");
    for (i = 0; i < items.length; i++) {
        if (items[i].type == "checkbox") {
            items[i].checked = CheckAll.checked;
        }
    }
}


