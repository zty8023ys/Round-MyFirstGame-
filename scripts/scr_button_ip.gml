/// scr_button_ip();

http_get("http://ip.3322.net/");
getip = true;

with(oButton) {
    visible = false;
}
oInformation.visible = true;
oInformation.depth = -13;
