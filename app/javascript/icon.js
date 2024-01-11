const icon = () => {
  const iconItems = document.querySelectorAll('.radio-label');

  iconItems.forEach(function (iconItem) {
    iconItem.addEventListener('click', function () {
      iconItems.forEach(function (item) {
        item.classList.remove('selected');
        item.style.opacity = '1';  // 選択されていないものは opacity を元に戻す
      });

      iconItem.classList.add('selected');
      iconItem.style.opacity = '0.2';  // 選択されたものに opacity を適用
    });
  });
};

window.addEventListener("turbo:load", icon);
window.addEventListener("turbo:render", icon);