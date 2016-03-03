/// scr_button_ip();
http_get("http://ip-api.com/json");
getip = true;

with(oButton) {
    visible = false;
}
oInformation.visible = true;
oInformation.depth = -13;
