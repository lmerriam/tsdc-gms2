var elapsed = floor(scr_sec_since(creation_time));

switch elapsed {
	case 4:
		state = 3;
		break;
	case 3:
		state = 2;
		break;
	case 2:
		state = 1;
		break;
}

