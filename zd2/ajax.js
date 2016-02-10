
$(document).ready( function(){
    $("body").on("click", "input[type = 'checkbox']", function(){
        var id = event.target.id;
        console.log(event.target.id);
        $.ajax({
            url: "db.php",
            type: "POST",
            data: ({task_id: id}),
            daraType: "text",
            success: function (id) {
                console.log(id);
                var cont = $("div[id = " + id + "]").html();
                $("div[id = " + id + "]").remove();

                $("#tasks").append("<div id=" + id + ">" + cont + "</div>");
                $("div[id=" + id + "]").addClass("crossed");
                $("input[id=" + id + "]").attr("checked", "checked");
            }
        })
    })
    $("#task_name").keypress(function(e){
        if(e.keyCode == 13){
            if( $("#task_name").val() == "" ){
                $(".header").append("<h1>Вы не ввели задачу</h1>");
            }else {
                $.ajax({
                    url: "db.php",
                    type: "POST",
                    data: ({task_name: $("#task_name").val()}),
                    daraType: "json",
                    success: function(data){
                        var arr = $.parseJSON(data);
                        Data = new Date();
                        Year = Data.getFullYear();
                        Month = Data.getMonth();
                        nMonth = Data.getDate();
                        Hour = Data.getHours();
                        Minutes = Data.getMinutes();
                        Seconds = Data.getSeconds();
                        $("#tasks").prepend("<div id="+ arr.id +"><input id="+ arr.id +" type='checkbox'> : "+ arr.name +"<h6>Добавлено: "+Year+"-"+Month+"-"+nMonth+" "+Hour+":"+Minutes+":"+Seconds+" </h6></div>");
                        $("#task_name").val() == "";
                    }
                })
            }
        }
    })
    $("#add-btn").bind("click", function(){
        if( $("#task_name").val() == "" ){
            $(".header").append("<h1>Вы не ввели задачу</h1>");
        }else {
            $.ajax({
            url: "db.php",
            type: "POST",
            data: ({task_name: $("#task_name").val()}),
            daraType: "json",
            success: function(data){
                var arr = $.parseJSON(data);
                Data = new Date();
                Year = Data.getFullYear();
                Month = Data.getMonth();
                nMonth = Data.getDate();
                Hour = Data.getHours();
                Minutes = Data.getMinutes();
                Seconds = Data.getSeconds();
                $("#tasks").prepend("<div id="+ arr.id +"><input id="+ arr.id +" type='checkbox'> : "+ arr.name +"<h6>Добавлено: "+Year+"-"+Month+"-"+nMonth+" "+Hour+":"+Minutes+":"+Seconds+" </h6></div>");
                $("#task_name").val() == "";
            }
        })
        }
    })
} );
