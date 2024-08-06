document.addEventListener('DOMContentLoaded', function() {
    var dropdownToggles = document.querySelectorAll('.dropdown');

    dropdownToggles.forEach(function(toggle) {
        toggle.addEventListener('click', function(e) {
            e.preventDefault();
            var dropdownMenu = toggle.nextElementSibling;

            // 토글 클래스로 드롭다운 메뉴의 표시 여부를 제어합니다.
            dropdownMenu.classList.toggle('active');
        });
    });

    // document 클릭 시 드롭다운 메뉴가 닫히도록 처리합니다.
    document.addEventListener('click', function(e) {
        if (!e.target.classList.contains('dropdown')) {
            var dropdownMenus = document.querySelectorAll('.dropdown-menu');
            dropdownMenus.forEach(function(menu) {
                menu.classList.remove('active');
            });
        }
    });
});
