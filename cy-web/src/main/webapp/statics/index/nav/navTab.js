// /**
//  * Created by chenyi on 2017/12/20.
//  */
// $("a[target=navTab]").each(function(){
//     $(this).click(function(event){
//         var $this = $(this);
//         var title =  $this.text()||$this.attr("title") ;
//         var tabid = $this.attr("rel") || "_blank";
//         var fresh = eval($this.attr("fresh") || "true");
//         var external = eval($this.attr("external") || "false");
//         var url = unescape($this.attr("href")).replaceTmById($(event.target).parents(".unitBox:first"));
//         if (!url.isFinishedTm()) {
//             alertMsg.error($this.attr("warn") || DWZ.msg("alertSelectMsg"));
//             return false;
//         }
//         navTab.openTab(tabid, url,{title:title, fresh:fresh, external:external});
//
//         event.preventDefault();
//     });
// });

$(function () {
    $(".tabsPage").on("click", "li", function () {
        $(this).parents("ul").find("li").removeClass("selected");
        $(this).addClass("selected")
    });
    $(".tabsPage").on("mouseover", "a.close", function () {
        $(this).addClass("hover");
    });
    $(".tabsPageb").on("mouseout", "a.close", function () {
        $(this).removeClass("hover");
    });
});