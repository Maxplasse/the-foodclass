
(function () {
  const angle = 6;
  let active = 0;
  console.log("init");

  const handleClickNext = () => {
    active < 4 ? active++ : active;
    // active == 4 ? next.removeAttribute("button-next") : next.setAttribute("button-next");
    document.querySelector(".wrapper-circle").style.transform = `rotate(${
      active * angle
    }deg)`;
  };
  const handleClickPrev = () => {
    active > -4 ? active-- : active;
    // active ==- 4 ? prev.removeAttribute("button-prev") : prev.setAttribute("button-prev");
    document.querySelector(".wrapper-circle").style.transform = `rotate(${
      active * angle
    }deg)`;
  };

  var next = document.getElementById("button-next");
  if (next )
  console.log(active)
    next.addEventListener("click", function () {
      handleClickNext();
    });
  var prev = document.getElementById("button-prev");
  if (prev)
    prev.addEventListener("click", function () {
      handleClickPrev();
    });
})();
