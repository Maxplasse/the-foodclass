// let slider = document.querySelector(".slider");
// let innerSlider = document.querySelector(".wrapper-circle");

// let pressed = false;
// let startx;
// let x;

// slider.addEventListener('mousedown', (e)=> {
//   pressed = true;
//   startx = e.offsetX - innerSlider.offsetLeft;
//   slider.style.cursor = 'grabbing'
// })

// slider.addEventListener('mouseenter', (e)=> {
//   slider.style.cursor = 'grab'
// })

// slider.addEventListener('mouseup', (e)=> {
//   slider.style.cursor = 'grab'
// })
// window.addEventListener('mouseup', (e)=> {
//   pressed = false
// })

// slider.addEventListener('mousemove', (e)=> {
//   if(!pressed) return;
//   e.preventDefault();

//   x = e.offsetX;
//   innerSlider.style.left = `${x - startx}px`;
// })

// const draggableCircle = document.querySelector('.wrapper-circle')


// const circleDrag = Draggable.create(draggableCircle, {
//   type: 'rotation',
//   throwProps: true,
//   snap: function handleSnap(endValue) {
//     // to FIX >> stay full at 360, go empty at 1
//     function isEven(n) {
//       return n % 2 == 0;
//     }
//     function isLessThanOne(n) {
//       return n < 1
//     }
//     const snapAngle = 45
//     const returnValue = Math.round(endValue / snapAngle) * snapAngle
//     const fillValue = isEven(parseInt(returnValue / 360)) || isLessThanOne(returnValue / 360) ? returnValue : returnValue - 360
//     updateFill(fillValue)
//     return Math.round(endValue / snapAngle) * snapAngle
//   },
//   onDrag: function handleColorFill(e) {
//     const fillValue = Math.round(this.rotation)
//     updateFill(fillValue)
//     //will add timer func here && initiate countdown animation?
//   }
// // })


// let wheel = Draggable.create(".wrapper-circle", {
//   type:"rotation",
//   throwProps:true,
//     snap:function(endValue) {
//      return Math.round(endValue / 90) * 90;
//   },
//    onDrag: function() {},
//    onThrowComplete: function() {
//      dragActive()
//    }
// });

// TweenMax.set('.wrapper-circle li:not(.active) .card > *', {
//  opacity: 0,
//  y: -10
// })

// // Calculate which product is active
// function dragActive() {
//  var rot = wheel[0].rotation / 360
//  var decimal = rot % 1
//  var sliderLength = $('.wrapper-circle li').length
//  var tempIndex = Math.round(sliderLength * decimal)
//  var index

//  if (rot < 0) {
//    index = Math.abs(tempIndex)
//  } else {
//    index = sliderLength - tempIndex
//  }

//  if (decimal === 0) {
//    index = 0
//  }

//  TweenMax.staggerTo('.wrapper-circle li.active .card > *', 0.6,   {
//    opacity: 0,
//    y: -10
//  }, 0.1)

//  $('.wrapper-circle li.active').removeClass('active')
//  $($('.wrapper-circle li')[index]).addClass('active')

//  TweenMax.staggerTo('.wrapper-circle li.active .card > *', 0.6,   {
//    opacity: 1,
//    y: 0
//  }, 0.1)

// }

// // Tween rotation
// function rotateDraggable(deg, callback) {
//  var rot = wheel[0].rotation
//  var tl = new TimelineMax()

//  tl
//    .to('.wrapper-circle', .5, {
//      rotation: rot + deg,
//      onComplete: function() {
//        callback()
//      }
//    });

//  wheel[0].rotation = rot + deg
// }

// // Handlers
// function nextHandler() {
//  var current = $('.wrapper-circle li.active')
//  var item = current + 1
//  if (item > $('.wrapper-circle li').length) {
//    item = 1
//  }
//  rotateDraggable(360/$('.wrapper-circle li').length, dragActive);
// }

// function prevHandler() {
//  var current = $('.wrapper-circle li.active')
//  var item = current - 1
//  if (item > 1) {
//    item = $('.wrapper-circle li').length
//  }
//  rotateDraggable(-360/$('.wrapper-circle li').length, dragActive);
// }

// var square = '<svg x="0px" y="0px" width="1200px" height="600px" viewBox="0 0 1200 600"><rect x="0.002" y="0.499" width="1200" height="600"/></svg>'
