let playing = false;
let showing = false;


const toggleVideo = function () {
  console.log('test toggle');
  $('.fun').toggle(1000);
  if (playing) {
    $('.fun').get(0).pause();
    console.log('pausing');
    playing = false;
  }
  else {
    $('.fun').get(0).play();
    playing = true;
  };
  // animateDiv();
};

function makeNewPosition(){

    // Get viewport dimensions (remove the dimension of the div)
    let h = $(window).height() - 200;
    let w = $(window).width() - 200;


    let nh = Math.floor(Math.random() * h);
    let nw = Math.floor(Math.random() * w);

    return [nh,nw];
}

function animateDiv(){
    let newq = makeNewPosition();
    $('.fun').animate({ top: newq[0], left: newq[1] }, function(){
      animateDiv();
    });
};

$(document).ready(function() {
  console.log('working test');


  $('.toggle-video').on('click',toggleVideo)


  $('.toggle-show1').on('click',function() {
    if (!showing) {
      $('.password-input1').attr('type','text');
      $('.toggle-show1').html("◎ Hide ◎");
      showing = true;
    }
    else {
      $('.password-input1').attr('type','password');
      $('.toggle-show1').html("◉👾 Show 👾◉");
      showing = false;
    }
  })

  $('.toggle-show2').on('click',function() {
    if (!showing) {
      $('.password-input2').attr('type','text');
      $('.toggle-show2').html("◎ Hide ◎");
      showing = true;
    }
    else {
      $('.password-input2').attr('type','password');
      $('.toggle-show2').html("◉👾 Show 👾◉");
      showing = false;
    }
  })
});
