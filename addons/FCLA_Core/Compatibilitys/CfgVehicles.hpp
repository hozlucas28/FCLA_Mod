
/********************************************************************************|
|                         VEHICULOS - "COMPATIBILIDADES"                         |
|********************************************************************************/



/* ------------------- MOCHILAS CON RADIO (DLC CONTACT) -------------------- */

class B_RadioBag_01_black_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_west_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "rt1523g_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_mtp_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_west_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "rt1523g_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_wdl_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_west_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "rt1523g_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_tropic_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_west_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "rt1523g_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_hex_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_east_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "bussole_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_oucamo_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_east_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "bussole_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_ghex_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_east_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "bussole_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_digi_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_guer_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "anprc155_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};


class B_RadioBag_01_eaf_F: B_RadioBag_01_base_F {
  tf_encryptionCode = "tf_guer_radio_code";
  tf_subtype = "digital_lr";
  tf_dialog = "anprc155_radio_dialog";
  tf_dialogUpdate = "call TFAR_fnc_updateLRDialogToChannel;";
  tf_hasLRradio = 1;
  tf_range = 20000;
};
