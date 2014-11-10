var aTags = document.getElementById('wrapper').getElementsByTagName('a');
for(var id = 1; id <= aTags.length; id++){
    var currentATag = document.getElementById(id);
    currentATag.addEventListener('mousemove', (function(){
        var div = document.getElementById('comment' + this.id);
        var top = (function(e){
            return e.pageY;
        })(event);
        var left = (function(e){
            return e.pageX;
        })(event);
        div.style.display = 'block';
        div.style.position = 'absolute';
        div.style.top = (top + 15) + 'px';
        div.style.left = (left + 15) + 'px';
    }));

    currentATag.addEventListener('mouseleave', (function(){
        var div = document.getElementById('comment' + this.id);
        div.style.display = 'none';
    }));
}