/// scr_button_ip();
instance_create(64,0,oWlan);
with(oButton) {
    visible = false;
}
//oInformation.depth = -15;
oInformation.visible = true;



/*
http_get("http://ip.3322.net/");
getip = true;

with(oButton) {
    visible = false;
}
oInformation.visible = true;
oInformation.depth = -13;
