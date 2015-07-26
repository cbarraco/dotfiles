$(document).ready(function () {
    $('a[href*="view"]').each(function() {
        this.href = this.href.replace("view", "download");
    });
});