$(function(){
    $(".movie_search form").on("submit",function(e){
        e.preventDefault();
        let keyword = $(".movie_search input").val();
        $.ajax({
            url:"/api/history/search/add?keyword="+keyword,
            type:"put",
            success:function(r){
                if(keyword==null||isEmpty(keyword,false)){
                    location.href="/";
                }
                else{
                    location.href="/?keyword="+keyword;
                }
            }
        })
    })
    $(".tab_button").click(function(){
        let index =$(this).index();
        $(".tab_button, .movieList").removeClass("on");
        $(".movieList").eq(index).addClass("on");
        $(this).addClass("on");
    })
})