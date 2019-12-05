var sounds;

$(function() {
	window.addEventListener('message', function(event) {
		if (event.data.type == "outlawAlert") {
            playSound(event.data.filename, event.data.volume);
        } else if(event.data.type == "outlawAlerts") {
            playSounds(event.data.filenames, event.data.volume);
        }
	});
});

function playSound(filename, volume){
    // console.log("filename : " + filename);//DEBUG
    var sound = new Audio("./sounds/" + filename);
    var error = false;
    sound.onerror = function() {
        console.log("Sound Error - filename : " + filename);
        if (error){//If error is already true then static sound errored
            $.post('http://esx_outlawalert/esx_outlawAlert:endSound', JSON.stringify({}));
        }
        error = true;
    };
    if (error){
        var sound = new Audio("./sounds/NOISE_LOOP_01.ogg");
    }
    sound.volume = volume;
    sound.addEventListener('ended', function(){
        $.post('http://esx_outlawalert/esx_outlawAlert:endSound', JSON.stringify({}));
    });
    sound.play();
    setTimeout(function(){
        sound.pause();
    }, (10000));
}