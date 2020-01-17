$(document).on("click", "#likebutton", function () {
    $.ajax({
        url: "/Ajax/LikeBestPost",
        method: "POST",
        success: function (res) {
            console.log(res);
        }
    })
});
