$(function(){
    $(".delete").click(function(){
        if(!confirm("평점/댓글을 삭제하시겠습니까?"))return;
        let seq = $(this).attr("date-seq")
        $.ajax({
            url:"/api/movie/comment?seq="+$(this).attr("data-seq"),
            type:"delete",
            success:function(r){
                alert(r.message);
                location.reload();
            }
        })
    })
})