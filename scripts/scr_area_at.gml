/// scr_area_at(area);
var area = argument[0];

switch (area) {
    case BACK: return scr_area(576,320,64,32); break;
    case FEN: return scr_area(128,320,32,32); break;
    case PAN: return scr_area(192,320,32,32); break;
    case NU: return scr_area(256,320,32,32); break;
    case SKILL0: return scr_area(oHero.firstbtnx,oHero.firstbtny,32,32); break;
    case SKILL1: return scr_area(oHero.firstbtnx,oHero.firstbtny+SKILLGAP,32,32); break;
    case SKILL2: return scr_area(oHero.firstbtnx,oHero.firstbtny+SKILLGAP*2,32,32); break;
    case SKILL3: return scr_area(oHero.firstbtnx,oHero.firstbtny+SKILLGAP*3,32,32); break;
    case PAGE2: return scr_area(576,280,64,32); break;
    case WEB: return scr_area(392,320,240,20); break;
}
