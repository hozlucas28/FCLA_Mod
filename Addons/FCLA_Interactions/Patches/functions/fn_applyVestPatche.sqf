
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_applyVestPatche

Description:
    Le cambia el parche del chaleco a la unidad, si es que existe una
    variante del mismo con el parche que se envio. Ademas reconoce si existe
    una variante del chaleco con el nombre de la unidad enviada.

Arguments:
    _unit - unidad a la que se le colocara el nuevo chaleco con parche.
    _vest - classname del chaleco de la unidad enviada.
    _patche - classname del parche.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit","_patche","_vest"];
if (_vest == "") exitWith {false};



//Items del chaleco.
_itemsInVest = vestItems _unit;

//UID de la unidad.
_UID = getPlayerUID _unit;



//Vectores locales.
_blackLightVests = [
                    "V_PlateCarrier1_blk","Vest_Light_FCLA_Black","Vest_Light_FCLA_hozLucas_Black","Vest_Light_FCLA_Naretick_Black",
                    "Vest_Light_FCLA_Ghostkiller_Black","Vest_Light_FCLA_Sagara_Black","Vest_Light_FCLA_Lorflord_Black",
                    "Vest_Light_FCLA_Kovalsky_Black","Vest_Light_FCLA_Byron_Black","Vest_Light_FCLA_Legion_Black","Vest_Light_Takana_Black",
                    "Vest_Light_Jaguar_Black","Vest_Light_Jaguar_hozLucas_Black","Vest_Light_Jaguar_Byron_Black","Vest_Light_Condor_Black",
                    "Vest_Light_Condor_Kovalsky_Black","Vest_Light_Condor_Naretick_Black","Vest_Light_Condor_Sagara_Black",
                    "Vest_Light_Salamandra_Black","Vest_Light_Anaconda_Black","Vest_Light_Anaconda_Legion_Black","Vest_Light_Quetzal_Black",
                    "Vest_Light_Quetzal_Lorflord_Black","Vest_Light_Quetzal_Ghostkiller_Black"
                   ];
_blackNormalVests = ["V_PlateCarrier2_blk","Vest_Normal_FCLA_Black","Vest_Normal_Takana_Black","Vest_Normal_Jaguar_Black","Vest_Normal_Condor_Black","Vest_Normal_Salamandra_Black","Vest_Normal_Anaconda_Black","Vest_Normal_Quetzal_Black"];
_greenLightVests = [
                    "V_PlateCarrier1_rgr","V_PlateCarrier1_rgr_noflag_F","Vest_Light_FCLA_Green","Vest_Light_FCLA_hozLucas_Green","Vest_Light_FCLA_Naretick_Green",
                    "Vest_Light_FCLA_Ghostkiller_Green","Vest_Light_FCLA_Sagara_Green","Vest_Light_FCLA_Lorflord_Green",
                    "Vest_Light_FCLA_Kovalsky_Green","Vest_Light_FCLA_Byron_Green","Vest_Light_FCLA_Legion_Green","Vest_Light_Takana_Green",
                    "Vest_Light_Jaguar_Green","Vest_Light_Jaguar_hozLucas_Green","Vest_Light_Jaguar_Byron_Green","Vest_Light_Condor_Green",
                    "Vest_Light_Condor_Kovalsky_Green","Vest_Light_Condor_Naretick_Green","Vest_Light_Condor_Sagara_Green",
                    "Vest_Light_Salamandra_Green","Vest_Light_Anaconda_Green","Vest_Light_Anaconda_Legion_Green","Vest_Light_Quetzal_Green",
                    "Vest_Light_Quetzal_Lorflord_Green","Vest_Light_Quetzal_Ghostkiller_Green"
                   ];
_greenNormalVests = ["V_PlateCarrier2_rgr","Vest_Normal_FCLA_Green","Vest_Normal_Takana_Green","Vest_Normal_Jaguar_Green","Vest_Normal_Condor_Green","Vest_Normal_Salamandra_Green","Vest_Normal_Anaconda_Green","Vest_Normal_Quetzal_Green"];
_tropicalLightVests = [
                       "V_PlateCarrier1_tna_F","Vest_Light_FCLA_Tropical","Vest_Light_FCLA_hozLucas_Tropical","Vest_Light_FCLA_Naretick_Tropical",
                       "Vest_Light_FCLA_Ghostkiller_Tropical","Vest_Light_FCLA_Sagara_Tropical","Vest_Light_FCLA_Lorflord_Tropical",
                       "Vest_Light_FCLA_Kovalsky_Tropical","Vest_Light_FCLA_Byron_Tropical","Vest_Light_FCLA_Legion_Tropical","Vest_Light_Takana_Tropical",
                       "Vest_Light_Jaguar_Tropical","Vest_Light_Jaguar_hozLucas_Tropical","Vest_Light_Jaguar_Byron_Tropical","Vest_Light_Condor_Tropical",
                       "Vest_Light_Condor_Kovalsky_Tropical","Vest_Light_Condor_Naretick_Tropical","Vest_Light_Condor_Sagara_Tropical",
                       "Vest_Light_Salamandra_Tropical","Vest_Light_Anaconda_Tropical","Vest_Light_Anaconda_Legion_Tropical","Vest_Light_Quetzal_Tropical",
                       "Vest_Light_Quetzal_Lorflord_Tropical","Vest_Light_Quetzal_Ghostkiller_Tropical"
                      ];
_tropicalNormalVests = ["V_PlateCarrier2_tna_F","Vest_Normal_FCLA_Tropical","Vest_Normal_Takana_Tropical","Vest_Normal_Jaguar_Tropical","Vest_Normal_Condor_Tropical","Vest_Normal_Salamandra_Tropical","Vest_Normal_Anaconda_Tropical","Vest_Normal_Quetzal_Tropical"];
_blackGLVests = ["V_PlateCarrierGL_blk","Vest_GL_FCLA_Black","Vest_GL_Takana_Black","Vest_GL_Jaguar_Black","Vest_GL_Condor_Black","Vest_GL_Salamandra_Black","Vest_GL_Anaconda_Black","Vest_GL_Quetzal_Black"];
_greenGLVests = ["V_PlateCarrierGL_rgr","Vest_GL_FCLA_Green","Vest_GL_Takana_Green","Vest_GL_Jaguar_Green","Vest_GL_Condor_Green","Vest_GL_Salamandra_Green","Vest_GL_Anaconda_Green","Vest_GL_Quetzal_Green"];
_MTPGLVests = ["V_PlateCarrierGL_mtp","Vest_GL_FCLA_MTP","Vest_GL_Takana_MTP","Vest_GL_Jaguar_MTP","Vest_GL_Condor_MTP","Vest_GL_Salamandra_MTP","Vest_GL_Anaconda_MTP","Vest_GL_Quetzal_MTP"];
_tropicalGLVests = ["V_PlateCarrierGL_tna_F","Vest_GL_FCLA_Tropical","Vest_GL_Takana_Tropical","Vest_GL_Jaguar_Tropical","Vest_GL_Condor_Tropical","Vest_GL_Salamandra_Tropical","Vest_GL_Anaconda_Tropical","Vest_GL_Quetzal_Tropical"];
_blackCarrierVests = ["V_PlateCarrierSpec_blk","Vest_Special_Carrier_FCLA_Black","Vest_Special_Carrier_Takana_Black","Vest_Special_Carrier_Jaguar_Black","Vest_Special_Carrier_Condor_Black","Vest_Special_Carrier_Salamandra_Black","Vest_Special_Carrier_Anaconda_Black","Vest_Special_Carrier_Quetzal_Black"];
_greenCarrierVests = ["V_PlateCarrierSpec_rgr","Vest_Special_Carrier_FCLA_Green","Vest_Special_Carrier_Takana_Green","Vest_Special_Carrier_Jaguar_Green","Vest_Special_Carrier_Condor_Green","Vest_Special_Carrier_Salamandra_Green","Vest_Special_Carrier_Anaconda_Green","Vest_Special_Carrier_Quetzal_Green"];
_MTPCarrierVests = ["V_PlateCarrierSpec_mtp","Vest_Special_Carrier_FCLA_MTP","Vest_Special_Carrier_Takana_MTP","Vest_Special_Carrier_Jaguar_MTP","Vest_Special_Carrier_Condor_MTP","Vest_Special_Carrier_Salamandra_MTP","Vest_Special_Carrier_Anaconda_MTP","Vest_Special_Carrier_Quetzal_MTP"];
_tropicalCarrierVests = ["V_PlateCarrierSpec_tna_F","Vest_Special_Carrier_FCLA_Tropical","Vest_Special_Carrier_Takana_Tropical","Vest_Special_Carrier_Jaguar_Tropical","Vest_Special_Carrier_Condor_Tropical","Vest_Special_Carrier_Salamandra_Tropical","Vest_Special_Carrier_Anaconda_Tropical","Vest_Special_Carrier_Quetzal_Tropical"];
_EODVests = ["V_EOD_olive_F","Vest_EOD_FCLA_Olive","Vest_EOD_Takana_Olive","Vest_EOD_Jaguar_Olive","Vest_EOD_Condor_Olive","Vest_EOD_Salamandra_Olive","Vest_EOD_Anaconda_Olive","Vest_EOD_Quetzal_Olive"];
_digitalLightVests = [
                      "Vest_Light_Digital","Vest_Light_FCLA_Digital","Vest_Light_FCLA_hozLucas_Digital","Vest_Light_FCLA_Naretick_Digital",
                      "Vest_Light_FCLA_Ghostkiller_Digital","Vest_Light_FCLA_Sagara_Digital","Vest_Light_FCLA_Lorflord_Digital",
                      "Vest_Light_FCLA_Kovalsky_Digital","Vest_Light_FCLA_Byron_Digital","Vest_Light_FCLA_Legion_Digital","Vest_Light_Takana_Digital",
                      "Vest_Light_Jaguar_Digital","Vest_Light_Jaguar_hozLucas_Digital","Vest_Light_Jaguar_Byron_Digital","Vest_Light_Condor_Digital",
                      "Vest_Light_Condor_Kovalsky_Digital","Vest_Light_Condor_Naretick_Digital","Vest_Light_Condor_Sagara_Digital",
                      "Vest_Light_Salamandra_Digital","Vest_Light_Anaconda_Digital","Vest_Light_Anaconda_Legion_Digital","Vest_Light_Quetzal_Digital",
                      "Vest_Light_Quetzal_Lorflord_Digital","Vest_Light_Quetzal_Ghostkiller_Digital"
                     ];
_digitalNormalVests = ["Vest_Normal_Digital","Vest_Normal_FCLA_Digital","Vest_Normal_Takana_Digital","Vest_Normal_Jaguar_Digital","Vest_Normal_Condor_Digital","Vest_Normal_Salamandra_Digital","Vest_Normal_Anaconda_Digital","Vest_Normal_Quetzal_Digital"];
_urbanOneLightVests = [
                       "Vest_Light_Urban_1","Vest_Light_FCLA_Urban_1","Vest_Light_FCLA_hozLucas_Urban_1","Vest_Light_FCLA_Naretick_Urban_1",
                       "Vest_Light_FCLA_Ghostkiller_Urban_1","Vest_Light_FCLA_Sagara_Urban_1","Vest_Light_FCLA_Lorflord_Urban_1",
                       "Vest_Light_FCLA_Kovalsky_Urban_1","Vest_Light_FCLA_Byron_Urban_1","Vest_Light_FCLA_Legion_Urban_1","Vest_Light_Takana_Urban_1",
                       "Vest_Light_Jaguar_Urban_1","Vest_Light_Jaguar_hozLucas_Urban_1","Vest_Light_Jaguar_Byron_Urban_1","Vest_Light_Condor_Urban_1",
                       "Vest_Light_Condor_Kovalsky_Urban_1","Vest_Light_Condor_Naretick_Urban_1","Vest_Light_Condor_Sagara_Urban_1",
                       "Vest_Light_Salamandra_Urban_1","Vest_Light_Anaconda_Urban_1","Vest_Light_Anaconda_Legion_Urban_1","Vest_Light_Quetzal_Urban_1",
                       "Vest_Light_Quetzal_Lorflord_Urban_1","Vest_Light_Quetzal_Ghostkiller_Urban_1"
                      ];
_urbanOneNormalVests = ["Vest_Normal_Urban_1","Vest_Normal_FCLA_Urban_1","Vest_Normal_Takana_Urban_1","Vest_Normal_Jaguar_Urban_1","Vest_Normal_Condor_Urban_1","Vest_Normal_Salamandra_Urban_1","Vest_Normal_Anaconda_Urban_1","Vest_Normal_Quetzal_Urban_1"];
_urbanTwoLightVests = [
                       "Vest_Light_Urban_2","Vest_Light_FCLA_Urban_2","Vest_Light_FCLA_hozLucas_Urban_2","Vest_Light_FCLA_Naretick_Urban_2",
                       "Vest_Light_FCLA_Ghostkiller_Urban_2","Vest_Light_FCLA_Sagara_Urban_2","Vest_Light_FCLA_Lorflord_Urban_2",
                       "Vest_Light_FCLA_Kovalsky_Urban_2","Vest_Light_FCLA_Byron_Urban_2","Vest_Light_FCLA_Legion_Urban_2","Vest_Light_Takana_Urban_2",
                       "Vest_Light_Jaguar_Urban_2","Vest_Light_Jaguar_hozLucas_Urban_2","Vest_Light_Jaguar_Byron_Urban_2","Vest_Light_Condor_Urban_2",
                       "Vest_Light_Condor_Kovalsky_Urban_2","Vest_Light_Condor_Naretick_Urban_2","Vest_Light_Condor_Sagara_Urban_2",
                       "Vest_Light_Salamandra_Urban_2","Vest_Light_Anaconda_Urban_2","Vest_Light_Anaconda_Legion_Urban_2","Vest_Light_Quetzal_Urban_2",
                       "Vest_Light_Quetzal_Lorflord_Urban_2","Vest_Light_Quetzal_Ghostkiller_Urban_2"
                      ];
_urbanTwoNormalVests = ["Vest_Normal_Urban_2","Vest_Normal_FCLA_Urban_2","Vest_Normal_Takana_Urban_2","Vest_Normal_Jaguar_Urban_2","Vest_Normal_Condor_Urban_2","Vest_Normal_Salamandra_Urban_2","Vest_Normal_Anaconda_Urban_2","Vest_Normal_Quetzal_Urban_2"];
_urbanThreeLightVests = [
                         "Vest_Light_Urban_3","Vest_Light_FCLA_Urban_3","Vest_Light_FCLA_hozLucas_Urban_3","Vest_Light_FCLA_Naretick_Urban_3",
                         "Vest_Light_FCLA_Ghostkiller_Urban_3","Vest_Light_FCLA_Sagara_Urban_3","Vest_Light_FCLA_Lorflord_Urban_3",
                         "Vest_Light_FCLA_Kovalsky_Urban_3","Vest_Light_FCLA_Byron_Urban_3","Vest_Light_FCLA_Legion_Urban_3","Vest_Light_Takana_Urban_3",
                         "Vest_Light_Jaguar_Urban_3","Vest_Light_Jaguar_hozLucas_Urban_3","Vest_Light_Jaguar_Byron_Urban_3","Vest_Light_Condor_Urban_3",
                         "Vest_Light_Condor_Kovalsky_Urban_3","Vest_Light_Condor_Naretick_Urban_3","Vest_Light_Condor_Sagara_Urban_3",
                         "Vest_Light_Salamandra_Urban_3","Vest_Light_Anaconda_Urban_3","Vest_Light_Anaconda_Legion_Urban_3","Vest_Light_Quetzal_Urban_3",
                         "Vest_Light_Quetzal_Lorflord_Urban_3","Vest_Light_Quetzal_Ghostkiller_Urban_3"
                        ];
_urbanThreeNormalVests = ["Vest_Normal_Urban_3","Vest_Normal_FCLA_Urban_3","Vest_Normal_Takana_Urban_3","Vest_Normal_Jaguar_Urban_3","Vest_Normal_Condor_Urban_3","Vest_Normal_Salamandra_Urban_3","Vest_Normal_Anaconda_Urban_3","Vest_Normal_Quetzal_Urban_3"];
_urbanFourLightVests = [
                        "Vest_Light_Urban_4","Vest_Light_FCLA_Urban_4","Vest_Light_FCLA_hozLucas_Urban_4","Vest_Light_FCLA_Naretick_Urban_4",
                        "Vest_Light_FCLA_Ghostkiller_Urban_4","Vest_Light_FCLA_Sagara_Urban_4","Vest_Light_FCLA_Lorflord_Urban_4",
                        "Vest_Light_FCLA_Kovalsky_Urban_4","Vest_Light_FCLA_Byron_Urban_4","Vest_Light_FCLA_Legion_Urban_4","Vest_Light_Takana_Urban_4",
                        "Vest_Light_Jaguar_Urban_4","Vest_Light_Jaguar_hozLucas_Urban_4","Vest_Light_Jaguar_Byron_Urban_4","Vest_Light_Condor_Urban_4",
                        "Vest_Light_Condor_Kovalsky_Urban_4","Vest_Light_Condor_Naretick_Urban_4","Vest_Light_Condor_Sagara_Urban_4",
                        "Vest_Light_Salamandra_Urban_4","Vest_Light_Anaconda_Urban_4","Vest_Light_Anaconda_Legion_Urban_4","Vest_Light_Quetzal_Urban_4",
                        "Vest_Light_Quetzal_Lorflord_Urban_4","Vest_Light_Quetzal_Ghostkiller_Urban_4"
                       ];
_urbanFourNormalVests = ["Vest_Normal_Urban_4","Vest_Normal_FCLA_Urban_4","Vest_Normal_Takana_Urban_4","Vest_Normal_Jaguar_Urban_4","Vest_Normal_Condor_Urban_4","Vest_Normal_Salamandra_Urban_4","Vest_Normal_Anaconda_Urban_4","Vest_Normal_Quetzal_Urban_4"];
_winterOneLightVests = [
                        "Vest_Light_Winter_1","Vest_Light_FCLA_Winter_1","Vest_Light_FCLA_hozLucas_Winter_1","Vest_Light_FCLA_Naretick_Winter_1",
                        "Vest_Light_FCLA_Ghostkiller_Winter_1","Vest_Light_FCLA_Sagara_Winter_1","Vest_Light_FCLA_Lorflord_Winter_1",
                        "Vest_Light_FCLA_Kovalsky_Winter_1","Vest_Light_FCLA_Byron_Winter_1","Vest_Light_FCLA_Legion_Winter_1","Vest_Light_Takana_Winter_1",
                        "Vest_Light_Jaguar_Winter_1","Vest_Light_Jaguar_hozLucas_Winter_1","Vest_Light_Jaguar_Byron_Winter_1","Vest_Light_Condor_Winter_1",
                        "Vest_Light_Condor_Kovalsky_Winter_1","Vest_Light_Condor_Naretick_Winter_1","Vest_Light_Condor_Sagara_Winter_1",
                        "Vest_Light_Salamandra_Winter_1","Vest_Light_Anaconda_Winter_1","Vest_Light_Anaconda_Legion_Winter_1","Vest_Light_Quetzal_Winter_1",
                        "Vest_Light_Quetzal_Lorflord_Winter_1","Vest_Light_Quetzal_Ghostkiller_Winter_1"
                       ];
_winterOneNormalVests = ["Vest_Normal_Winter_1","Vest_Normal_FCLA_Winter_1","Vest_Normal_Takana_Winter_1","Vest_Normal_Jaguar_Winter_1","Vest_Normal_Condor_Winter_1","Vest_Normal_Salamandra_Winter_1","Vest_Normal_Anaconda_Winter_1","Vest_Normal_Quetzal_Winter_1"];
_winterTwoLightVests = [
                        "Vest_Light_Winter_2","Vest_Light_FCLA_Winter_2","Vest_Light_FCLA_hozLucas_Winter_2","Vest_Light_FCLA_Naretick_Winter_2",
                        "Vest_Light_FCLA_Ghostkiller_Winter_2","Vest_Light_FCLA_Sagara_Winter_2","Vest_Light_FCLA_Lorflord_Winter_2",
                        "Vest_Light_FCLA_Kovalsky_Winter_2","Vest_Light_FCLA_Byron_Winter_2","Vest_Light_FCLA_Legion_Winter_2","Vest_Light_Takana_Winter_2",
                        "Vest_Light_Jaguar_Winter_2","Vest_Light_Jaguar_hozLucas_Winter_2","Vest_Light_Jaguar_Byron_Winter_2","Vest_Light_Condor_Winter_2",
                        "Vest_Light_Condor_Kovalsky_Winter_2","Vest_Light_Condor_Naretick_Winter_2","Vest_Light_Condor_Sagara_Winter_2",
                        "Vest_Light_Salamandra_Winter_2","Vest_Light_Anaconda_Winter_2","Vest_Light_Anaconda_Legion_Winter_2","Vest_Light_Quetzal_Winter_2",
                        "Vest_Light_Quetzal_Lorflord_Winter_2","Vest_Light_Quetzal_Ghostkiller_Winter_2"
                       ];
_winterTwoNormalVests = ["Vest_Normal_Winter_2","Vest_Normal_FCLA_Winter_2","Vest_Normal_Takana_Winter_2","Vest_Normal_Jaguar_Winter_2","Vest_Normal_Condor_Winter_2","Vest_Normal_Salamandra_Winter_2","Vest_Normal_Anaconda_Winter_2","Vest_Normal_Quetzal_Winter_2"];
_winterThreeLightVests = [
                          "Vest_Light_Winter_3","Vest_Light_FCLA_Winter_3","Vest_Light_FCLA_hozLucas_Winter_3","Vest_Light_FCLA_Naretick_Winter_3",
                          "Vest_Light_FCLA_Ghostkiller_Winter_3","Vest_Light_FCLA_Sagara_Winter_3","Vest_Light_FCLA_Lorflord_Winter_3",
                          "Vest_Light_FCLA_Kovalsky_Winter_3","Vest_Light_FCLA_Byron_Winter_3","Vest_Light_FCLA_Legion_Winter_3","Vest_Light_Takana_Winter_3",
                          "Vest_Light_Jaguar_Winter_3","Vest_Light_Jaguar_hozLucas_Winter_3","Vest_Light_Jaguar_Byron_Winter_3","Vest_Light_Condor_Winter_3",
                          "Vest_Light_Condor_Kovalsky_Winter_3","Vest_Light_Condor_Naretick_Winter_3","Vest_Light_Condor_Sagara_Winter_3",
                          "Vest_Light_Salamandra_Winter_3","Vest_Light_Anaconda_Winter_3","Vest_Light_Anaconda_Legion_Winter_3","Vest_Light_Quetzal_Winter_3",
                          "Vest_Light_Quetzal_Lorflord_Winter_3","Vest_Light_Quetzal_Ghostkiller_Winter_3"
                         ];
_winterThreeNormalVests = ["Vest_Normal_Winter_3","Vest_Normal_FCLA_Winter_3","Vest_Normal_Takana_Winter_3","Vest_Normal_Jaguar_Winter_3","Vest_Normal_Condor_Winter_3","Vest_Normal_Salamandra_Winter_3","Vest_Normal_Anaconda_Winter_3","Vest_Normal_Quetzal_Winter_3"];
_winterFourLightVests = [
                         "Vest_Light_Winter_4","Vest_Light_FCLA_Winter_4","Vest_Light_FCLA_hozLucas_Winter_4","Vest_Light_FCLA_Naretick_Winter_4",
                         "Vest_Light_FCLA_Ghostkiller_Winter_4","Vest_Light_FCLA_Sagara_Winter_4","Vest_Light_FCLA_Lorflord_Winter_4",
                         "Vest_Light_FCLA_Kovalsky_Winter_4","Vest_Light_FCLA_Byron_Winter_4","Vest_Light_FCLA_Legion_Winter_4","Vest_Light_Takana_Winter_4",
                         "Vest_Light_Jaguar_Winter_4","Vest_Light_Jaguar_hozLucas_Winter_4","Vest_Light_Jaguar_Byron_Winter_4","Vest_Light_Condor_Winter_4",
                         "Vest_Light_Condor_Kovalsky_Winter_4","Vest_Light_Condor_Naretick_Winter_4","Vest_Light_Condor_Sagara_Winter_4",
                         "Vest_Light_Salamandra_Winter_4","Vest_Light_Anaconda_Winter_4","Vest_Light_Anaconda_Legion_Winter_4","Vest_Light_Quetzal_Winter_4",
                         "Vest_Light_Quetzal_Lorflord_Winter_4","Vest_Light_Quetzal_Ghostkiller_Winter_4"
                        ];
_winterFourNormalVests = ["Vest_Normal_Winter_4","Vest_Normal_FCLA_Winter_4","Vest_Normal_Takana_Winter_4","Vest_Normal_Jaguar_Winter_4","Vest_Normal_Condor_Winter_4","Vest_Normal_Salamandra_Winter_4","Vest_Normal_Anaconda_Winter_4","Vest_Normal_Quetzal_Winter_4"];
_seaLightVests = [
                  "Vest_Light_Sea","Vest_Light_FCLA_Sea","Vest_Light_FCLA_hozLucas_Sea","Vest_Light_FCLA_Naretick_Sea",
                  "Vest_Light_FCLA_Ghostkiller_Sea","Vest_Light_FCLA_Sagara_Sea","Vest_Light_FCLA_Lorflord_Sea",
                  "Vest_Light_FCLA_Kovalsky_Sea","Vest_Light_FCLA_Byron_Sea","Vest_Light_FCLA_Legion_Sea","Vest_Light_Takana_Sea",
                  "Vest_Light_Jaguar_Sea","Vest_Light_Jaguar_hozLucas_Sea","Vest_Light_Jaguar_Byron_Sea","Vest_Light_Condor_Sea",
                  "Vest_Light_Condor_Kovalsky_Sea","Vest_Light_Condor_Naretick_Sea","Vest_Light_Condor_Sagara_Sea",
                  "Vest_Light_Salamandra_Sea","Vest_Light_Anaconda_Sea","Vest_Light_Anaconda_Legion_Sea","Vest_Light_Quetzal_Sea",
                  "Vest_Light_Quetzal_Lorflord_Sea","Vest_Light_Quetzal_Ghostkiller_Sea"
                 ];
_seaNormalVests = ["Vest_Normal_Sea","Vest_Normal_FCLA_Sea","Vest_Normal_Takana_Sea","Vest_Normal_Jaguar_Sea","Vest_Normal_Condor_Sea","Vest_Normal_Salamandra_Sea","Vest_Normal_Anaconda_Sea","Vest_Normal_Quetzal_Sea"];
_compatibleVests = _blackLightVests + _blackNormalVests + _greenLightVests + _greenNormalVests + _tropicalLightVests + _tropicalNormalVests + _blackGLVests + _greenGLVests + _MTPGLVests + _tropicalGLVests + _blackCarrierVests + _greenCarrierVests + _MTPCarrierVests + _tropicalCarrierVests + _EODVests + _digitalLightVests + _digitalNormalVests + _urbanOneLightVests + _urbanOneNormalVests + _urbanTwoLightVests + _urbanTwoNormalVests + _urbanThreeLightVests + _urbanThreeNormalVests + _urbanFourLightVests + _urbanFourNormalVests + _winterOneLightVests + _winterOneNormalVests + _winterTwoLightVests + _winterTwoNormalVests + _winterThreeLightVests + _winterThreeNormalVests + _winterFourLightVests + _winterFourNormalVests + _seaLightVests + _seaNormalVests;



if (_patche == "Patch_Takana") exitWith {
  if (_vest in _blackLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_Takana_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Takana_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_Takana_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Takana_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_Takana_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Takana_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_Takana_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Takana_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Takana_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Takana_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Takana_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Takana_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Takana_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Takana_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Takana_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Takana_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_Takana_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_Takana_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Digital") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Digital";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Digital") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Digital";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Urban_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Urban_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Urban_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Urban_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Urban_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Urban_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Urban_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Urban_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Urban_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Urban_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Urban_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Urban_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Urban_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Urban_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Urban_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Urban_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Winter_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Winter_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Winter_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Winter_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Winter_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Winter_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Winter_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Winter_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Winter_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Winter_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Winter_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Winter_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Winter_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Winter_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Winter_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Winter_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if (_vest == "Vest_Light_Takana_Sea") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Takana_Sea";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if (_vest == "Vest_Normal_Takana_Sea") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Takana_Sea";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};


if (_patche == "Patch_Jaguar") exitWith {
  if (_vest in _blackLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Black") || (_vest == "Vest_Light_Jaguar_hozLucas_Black") || (_vest == "Vest_Light_Jaguar_Byron_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Black";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Black";};
      default {_unit addVest "Vest_Light_Jaguar_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Black") || (_vest == "Vest_Light_Jaguar_hozLucas_Black") || (_vest == "Vest_Light_Jaguar_Byron_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Black";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Black";};
      default {_unit addVest "Vest_Normal_Jaguar_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Green") || (_vest == "Vest_Light_Jaguar_hozLucas_Green") || (_vest == "Vest_Light_Jaguar_Byron_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Green";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Green";};
      default {_unit addVest "Vest_Light_Jaguar_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Green") || (_vest == "Vest_Light_Jaguar_hozLucas_Green") || (_vest == "Vest_Light_Jaguar_Byron_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Green";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Green";};
      default {_unit addVest "Vest_Normal_Jaguar_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Tropical") || (_vest == "Vest_Light_Jaguar_hozLucas_Tropical") || (_vest == "Vest_Light_Jaguar_Byron_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Tropical";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Tropical";};
      default {_unit addVest "Vest_Light_Jaguar_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Tropical") || (_vest == "Vest_Light_Jaguar_hozLucas_Tropical") || (_vest == "Vest_Light_Jaguar_Byron_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Tropical";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Tropical";};
      default {_unit addVest "Vest_Normal_Jaguar_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_Jaguar_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Jaguar_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_Jaguar_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Jaguar_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_Jaguar_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Jaguar_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_Jaguar_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Jaguar_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Jaguar_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Jaguar_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Jaguar_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Jaguar_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Jaguar_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Jaguar_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Jaguar_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Jaguar_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_Jaguar_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_Jaguar_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Digital") || (_vest == "Vest_Light_Jaguar_hozLucas_Digital") || (_vest == "Vest_Light_Jaguar_Byron_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Digital";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Digital";};
      default {_unit addVest "Vest_Light_Jaguar_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Digital") || (_vest == "Vest_Light_Jaguar_hozLucas_Digital") || (_vest == "Vest_Light_Jaguar_Byron_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Digital";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Digital";};
      default {_unit addVest "Vest_Normal_Jaguar_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Urban_1") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_1") || (_vest == "Vest_Light_Jaguar_Byron_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_1";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_1";};
      default {_unit addVest "Vest_Light_Jaguar_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Urban_1") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_1") || (_vest == "Vest_Light_Jaguar_Byron_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_1";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_1";};
      default {_unit addVest "Vest_Normal_Jaguar_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Urban_2") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_2") || (_vest == "Vest_Light_Jaguar_Byron_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_2";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_2";};
      default {_unit addVest "Vest_Light_Jaguar_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Urban_2") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_2") || (_vest == "Vest_Light_Jaguar_Byron_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_2";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_2";};
      default {_unit addVest "Vest_Normal_Jaguar_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Urban_3") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_3") || (_vest == "Vest_Light_Jaguar_Byron_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_3";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_3";};
      default {_unit addVest "Vest_Light_Jaguar_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Urban_3") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_3") || (_vest == "Vest_Light_Jaguar_Byron_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_3";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_3";};
      default {_unit addVest "Vest_Normal_Jaguar_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Urban_4") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_4") || (_vest == "Vest_Light_Jaguar_Byron_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_4";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_4";};
      default {_unit addVest "Vest_Light_Jaguar_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Urban_4") || (_vest == "Vest_Light_Jaguar_hozLucas_Urban_4") || (_vest == "Vest_Light_Jaguar_Byron_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Urban_4";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Urban_4";};
      default {_unit addVest "Vest_Normal_Jaguar_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Winter_1") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_1") || (_vest == "Vest_Light_Jaguar_Byron_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_1";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_1";};
      default {_unit addVest "Vest_Light_Jaguar_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Winter_1") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_1") || (_vest == "Vest_Light_Jaguar_Byron_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_1";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_1";};
      default {_unit addVest "Vest_Normal_Jaguar_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Winter_2") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_2") || (_vest == "Vest_Light_Jaguar_Byron_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_2";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_2";};
      default {_unit addVest "Vest_Light_Jaguar_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Winter_2") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_2") || (_vest == "Vest_Light_Jaguar_Byron_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_2";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_2";};
      default {_unit addVest "Vest_Normal_Jaguar_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Winter_3") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_3") || (_vest == "Vest_Light_Jaguar_Byron_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_3";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_3";};
      default {_unit addVest "Vest_Light_Jaguar_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Winter_3") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_3") || (_vest == "Vest_Light_Jaguar_Byron_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_3";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_3";};
      default {_unit addVest "Vest_Normal_Jaguar_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Winter_4") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_4") || (_vest == "Vest_Light_Jaguar_Byron_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_4";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_4";};
      default {_unit addVest "Vest_Light_Jaguar_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Winter_4") || (_vest == "Vest_Light_Jaguar_hozLucas_Winter_4") || (_vest == "Vest_Light_Jaguar_Byron_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Winter_4";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Winter_4";};
      default {_unit addVest "Vest_Normal_Jaguar_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if ((_vest == "Vest_Light_Jaguar_Sea") || (_vest == "Vest_Light_Jaguar_hozLucas_Sea") || (_vest == "Vest_Light_Jaguar_Byron_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Sea";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Sea";};
      default {_unit addVest "Vest_Light_Jaguar_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Jaguar_Sea") || (_vest == "Vest_Light_Jaguar_hozLucas_Sea") || (_vest == "Vest_Light_Jaguar_Byron_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_hozLucas: {_unit addVest "Vest_Light_Jaguar_hozLucas_Sea";};
      case FCLA_customVest_UID_Byron: {_unit addVest "Vest_Light_Jaguar_Byron_Sea";};
      default {_unit addVest "Vest_Normal_Jaguar_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};


if (_patche == "Patch_Condor") exitWith {
  if (_vest in _blackLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Black") || (_vest == "Vest_Light_Condor_Kovalsky_Black") || (_vest == "Vest_Light_Condor_Naretick_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Black";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Black";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Black";};
      default {_unit addVest "Vest_Light_Condor_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Black") || (_vest == "Vest_Light_Condor_Kovalsky_Black") || (_vest == "Vest_Light_Condor_Naretick_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Black";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Black";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Black";};
      default {_unit addVest "Vest_Normal_Condor_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Green") || (_vest == "Vest_Light_Condor_Kovalsky_Green") || (_vest == "Vest_Light_Condor_Naretick_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Green";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Green";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Green";};
      default {_unit addVest "Vest_Light_Condor_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Green") || (_vest == "Vest_Light_Condor_Kovalsky_Green") || (_vest == "Vest_Light_Condor_Naretick_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Green";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Green";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Green";};
      default {_unit addVest "Vest_Normal_Condor_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Tropical") || (_vest == "Vest_Light_Condor_Kovalsky_Tropical") || (_vest == "Vest_Light_Condor_Naretick_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Tropical";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Tropical";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Tropical";};
      default {_unit addVest "Vest_Light_Condor_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Tropical") || (_vest == "Vest_Light_Condor_Kovalsky_Tropical") || (_vest == "Vest_Light_Condor_Naretick_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Tropical";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Tropical";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Tropical";};
      default {_unit addVest "Vest_Normal_Condor_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_Condor_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Condor_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_Condor_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Condor_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_Condor_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Condor_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_Condor_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Condor_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Condor_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Condor_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Condor_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Condor_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Condor_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Condor_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Condor_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Condor_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_Condor_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_Condor_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Digital") || (_vest == "Vest_Light_Condor_Kovalsky_Digital") || (_vest == "Vest_Light_Condor_Naretick_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Digital";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Digital";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Digital";};
      default {_unit addVest "Vest_Light_Condor_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Digital") || (_vest == "Vest_Light_Condor_Kovalsky_Digital") || (_vest == "Vest_Light_Condor_Naretick_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Digital";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Digital";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Digital";};
      default {_unit addVest "Vest_Normal_Condor_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Urban_1") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_1") || (_vest == "Vest_Light_Condor_Naretick_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_1";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_1";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_1";};
      default {_unit addVest "Vest_Light_Condor_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Urban_1") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_1") || (_vest == "Vest_Light_Condor_Naretick_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_1";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_1";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_1";};
      default {_unit addVest "Vest_Normal_Condor_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Urban_2") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_2") || (_vest == "Vest_Light_Condor_Naretick_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_2";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_2";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_2";};
      default {_unit addVest "Vest_Light_Condor_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Urban_2") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_2") || (_vest == "Vest_Light_Condor_Naretick_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_2";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_2";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_2";};
      default {_unit addVest "Vest_Normal_Condor_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Urban_3") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_3") || (_vest == "Vest_Light_Condor_Naretick_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_3";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_3";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_3";};
      default {_unit addVest "Vest_Light_Condor_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Urban_3") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_3") || (_vest == "Vest_Light_Condor_Naretick_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_3";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_3";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_3";};
      default {_unit addVest "Vest_Normal_Condor_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Urban_4") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_4") || (_vest == "Vest_Light_Condor_Naretick_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_4";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_4";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_4";};
      default {_unit addVest "Vest_Light_Condor_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Urban_4") || (_vest == "Vest_Light_Condor_Kovalsky_Urban_4") || (_vest == "Vest_Light_Condor_Naretick_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Urban_4";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Urban_4";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Urban_4";};
      default {_unit addVest "Vest_Normal_Condor_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Winter_1") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_1") || (_vest == "Vest_Light_Condor_Naretick_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_1";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_1";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_1";};
      default {_unit addVest "Vest_Light_Condor_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Winter_1") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_1") || (_vest == "Vest_Light_Condor_Naretick_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_1";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_1";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_1";};
      default {_unit addVest "Vest_Normal_Condor_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Winter_2") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_2") || (_vest == "Vest_Light_Condor_Naretick_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_2";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_2";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_2";};
      default {_unit addVest "Vest_Light_Condor_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Winter_2") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_2") || (_vest == "Vest_Light_Condor_Naretick_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_2";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_2";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_2";};
      default {_unit addVest "Vest_Normal_Condor_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Winter_3") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_3") || (_vest == "Vest_Light_Condor_Naretick_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_3";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_3";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_3";};
      default {_unit addVest "Vest_Light_Condor_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Winter_3") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_3") || (_vest == "Vest_Light_Condor_Naretick_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_3";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_3";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_3";};
      default {_unit addVest "Vest_Normal_Condor_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Winter_4") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_4") || (_vest == "Vest_Light_Condor_Naretick_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_4";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_4";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_4";};
      default {_unit addVest "Vest_Light_Condor_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Winter_4") || (_vest == "Vest_Light_Condor_Kovalsky_Winter_4") || (_vest == "Vest_Light_Condor_Naretick_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Winter_4";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Winter_4";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Winter_4";};
      default {_unit addVest "Vest_Normal_Condor_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if ((_vest == "Vest_Light_Condor_Sea") || (_vest == "Vest_Light_Condor_Kovalsky_Sea") || (_vest == "Vest_Light_Condor_Naretick_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Sea";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Sea";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Sea";};
      default {_unit addVest "Vest_Light_Condor_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Condor_Sea") || (_vest == "Vest_Light_Condor_Kovalsky_Sea") || (_vest == "Vest_Light_Condor_Naretick_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Kovalsky: {_unit addVest "Vest_Light_Condor_Kovalsky_Sea";};
      case FCLA_customVest_UID_Naretick: {_unit addVest "Vest_Light_Condor_Naretick_Sea";};
      case FCLA_customVest_UID_Sagara: {_unit addVest "Vest_Light_Condor_Sagara_Sea";};
      default {_unit addVest "Vest_Normal_Condor_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};


if (_patche == "Patch_Salamandra") exitWith {
  if (_vest in _blackLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_Salamandra_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Salamandra_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_Salamandra_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Salamandra_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_Salamandra_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Salamandra_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_Salamandra_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Salamandra_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Salamandra_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Salamandra_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Salamandra_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Salamandra_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Salamandra_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Salamandra_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Salamandra_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Salamandra_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_Salamandra_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_Salamandra_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Digital") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Digital";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Digital") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Digital";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Urban_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Urban_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Urban_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Urban_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Urban_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Urban_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Urban_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Urban_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Urban_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Urban_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Urban_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Urban_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Urban_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Urban_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Urban_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Urban_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Winter_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Winter_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Winter_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Winter_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Winter_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Winter_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Winter_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Winter_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Winter_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Winter_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Winter_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Winter_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Winter_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Winter_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Winter_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Winter_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if (_vest == "Vest_Light_Salamandra_Sea") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_Salamandra_Sea";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if (_vest == "Vest_Normal_Salamandra_Sea") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_Salamandra_Sea";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};


if (_patche == "Patch_Anaconda") exitWith {
  if (_vest in _blackLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Black") || (_vest == "Vest_Light_Anaconda_Legion_Black") || (_vest == "Vest_Light_Anaconda_Naretick_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Black";};
      default {_unit addVest "Vest_Light_Anaconda_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Black") || (_vest == "Vest_Light_Anaconda_Legion_Black") || (_vest == "Vest_Light_Anaconda_Naretick_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Black";};
      default {_unit addVest "Vest_Normal_Anaconda_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Green") || (_vest == "Vest_Light_Anaconda_Legion_Green") || (_vest == "Vest_Light_Anaconda_Naretick_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Green";};
      default {_unit addVest "Vest_Light_Anaconda_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Green") || (_vest == "Vest_Light_Anaconda_Legion_Green") || (_vest == "Vest_Light_Anaconda_Naretick_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Green";};
      default {_unit addVest "Vest_Normal_Anaconda_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Tropical") || (_vest == "Vest_Light_Anaconda_Legion_Tropical") || (_vest == "Vest_Light_Anaconda_Naretick_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Tropical";};
      default {_unit addVest "Vest_Light_Anaconda_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Tropical") || (_vest == "Vest_Light_Anaconda_Legion_Tropical") || (_vest == "Vest_Light_Anaconda_Naretick_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Tropical";};
      default {_unit addVest "Vest_Normal_Anaconda_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_Anaconda_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Anaconda_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_Anaconda_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Anaconda_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_Anaconda_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Anaconda_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_Anaconda_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Anaconda_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Anaconda_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Anaconda_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Anaconda_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Anaconda_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Anaconda_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Anaconda_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Anaconda_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Anaconda_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_Anaconda_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_Anaconda_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Digital") || (_vest == "Vest_Light_Anaconda_Legion_Digital") || (_vest == "Vest_Light_Anaconda_Naretick_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Digital";};
      default {_unit addVest "Vest_Light_Anaconda_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Digital") || (_vest == "Vest_Light_Anaconda_Legion_Digital") || (_vest == "Vest_Light_Anaconda_Naretick_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Digital";};
      default {_unit addVest "Vest_Normal_Anaconda_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Urban_1") || (_vest == "Vest_Light_Anaconda_Legion_Urban_1") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_1";};
      default {_unit addVest "Vest_Light_Anaconda_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Urban_1") || (_vest == "Vest_Light_Anaconda_Legion_Urban_1") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_1";};
      default {_unit addVest "Vest_Normal_Anaconda_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Urban_2") || (_vest == "Vest_Light_Anaconda_Legion_Urban_2") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_2";};
      default {_unit addVest "Vest_Light_Anaconda_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Urban_2") || (_vest == "Vest_Light_Anaconda_Legion_Urban_2") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_2";};
      default {_unit addVest "Vest_Normal_Anaconda_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Urban_3") || (_vest == "Vest_Light_Anaconda_Legion_Urban_3") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_3";};
      default {_unit addVest "Vest_Light_Anaconda_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Urban_3") || (_vest == "Vest_Light_Anaconda_Legion_Urban_3") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_3";};
      default {_unit addVest "Vest_Normal_Anaconda_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Urban_4") || (_vest == "Vest_Light_Anaconda_Legion_Urban_4") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_4";};
      default {_unit addVest "Vest_Light_Anaconda_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Urban_4") || (_vest == "Vest_Light_Anaconda_Legion_Urban_4") || (_vest == "Vest_Light_Anaconda_Naretick_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Urban_4";};
      default {_unit addVest "Vest_Normal_Anaconda_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Winter_1") || (_vest == "Vest_Light_Anaconda_Legion_Winter_1") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_1";};
      default {_unit addVest "Vest_Light_Anaconda_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Winter_1") || (_vest == "Vest_Light_Anaconda_Legion_Winter_1") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_1";};
      default {_unit addVest "Vest_Normal_Anaconda_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Winter_2") || (_vest == "Vest_Light_Anaconda_Legion_Winter_2") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_2";};
      default {_unit addVest "Vest_Light_Anaconda_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Winter_2") || (_vest == "Vest_Light_Anaconda_Legion_Winter_2") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_2";};
      default {_unit addVest "Vest_Normal_Anaconda_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Winter_3") || (_vest == "Vest_Light_Anaconda_Legion_Winter_3") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_3";};
      default {_unit addVest "Vest_Light_Anaconda_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Winter_3") || (_vest == "Vest_Light_Anaconda_Legion_Winter_3") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_3";};
      default {_unit addVest "Vest_Normal_Anaconda_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Winter_4") || (_vest == "Vest_Light_Anaconda_Legion_Winter_4") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_4";};
      default {_unit addVest "Vest_Light_Anaconda_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Winter_4") || (_vest == "Vest_Light_Anaconda_Legion_Winter_4") || (_vest == "Vest_Light_Anaconda_Naretick_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Winter_4";};
      default {_unit addVest "Vest_Normal_Anaconda_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if ((_vest == "Vest_Light_Anaconda_Sea") || (_vest == "Vest_Light_Anaconda_Legion_Sea") || (_vest == "Vest_Light_Anaconda_Naretick_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Sea";};
      default {_unit addVest "Vest_Light_Anaconda_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Anaconda_Sea") || (_vest == "Vest_Light_Anaconda_Legion_Sea") || (_vest == "Vest_Light_Anaconda_Naretick_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Legion: {_unit addVest "Vest_Light_Anaconda_Legion_Sea";};
      default {_unit addVest "Vest_Normal_Anaconda_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};


if (_patche == "Patch_Quetzal") exitWith {
  if (_vest in _blackLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Black") || (_vest == "Vest_Light_Quetzal_Lorflord_Black") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Black";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Black";};
      default {_unit addVest "Vest_Light_Quetzal_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Black") || (_vest == "Vest_Light_Quetzal_Lorflord_Black") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Black")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Black";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Black";};
      default {_unit addVest "Vest_Normal_Quetzal_Black";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Green") || (_vest == "Vest_Light_Quetzal_Lorflord_Green") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Green";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Green";};
      default {_unit addVest "Vest_Light_Quetzal_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Green") || (_vest == "Vest_Light_Quetzal_Lorflord_Green") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Green")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Green";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Green";};
      default {_unit addVest "Vest_Normal_Quetzal_Green";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Tropical") || (_vest == "Vest_Light_Quetzal_Lorflord_Tropical") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Tropical";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Tropical";};
      default {_unit addVest "Vest_Light_Quetzal_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Tropical") || (_vest == "Vest_Light_Quetzal_Lorflord_Tropical") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Tropical")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Tropical";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Tropical";};
      default {_unit addVest "Vest_Normal_Quetzal_Tropical";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_Quetzal_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Quetzal_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_Quetzal_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Quetzal_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_Quetzal_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Quetzal_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_Quetzal_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_Quetzal_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Quetzal_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Quetzal_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Quetzal_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Quetzal_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Quetzal_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Quetzal_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_Quetzal_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_Quetzal_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_Quetzal_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_Quetzal_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Digital") || (_vest == "Vest_Light_Quetzal_Lorflord_Digital") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Digital";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Digital";};
      default {_unit addVest "Vest_Light_Quetzal_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Digital") || (_vest == "Vest_Light_Quetzal_Lorflord_Digital") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Digital")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Digital";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Digital";};
      default {_unit addVest "Vest_Normal_Quetzal_Digital";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Urban_1") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_1") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_1";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_1";};
      default {_unit addVest "Vest_Light_Quetzal_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Urban_1") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_1") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_1";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_1";};
      default {_unit addVest "Vest_Normal_Quetzal_Urban_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Urban_2") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_2") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_2";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_2";};
      default {_unit addVest "Vest_Light_Quetzal_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Urban_2") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_2") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_2";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_2";};
      default {_unit addVest "Vest_Normal_Quetzal_Urban_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Urban_3") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_3") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_3";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_3";};
      default {_unit addVest "Vest_Light_Quetzal_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Urban_3") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_3") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_3";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_3";};
      default {_unit addVest "Vest_Normal_Quetzal_Urban_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Urban_4") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_4") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_4";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_4";};
      default {_unit addVest "Vest_Light_Quetzal_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Urban_4") || (_vest == "Vest_Light_Quetzal_Lorflord_Urban_4") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Urban_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Urban_4";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Urban_4";};
      default {_unit addVest "Vest_Normal_Quetzal_Urban_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Winter_1") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_1") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_1";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_1";};
      default {_unit addVest "Vest_Light_Quetzal_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Winter_1") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_1") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_1")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_1";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_1";};
      default {_unit addVest "Vest_Normal_Quetzal_Winter_1";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Winter_2") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_2") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_2";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_2";};
      default {_unit addVest "Vest_Light_Quetzal_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Winter_2") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_2") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_2")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_2";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_2";};
      default {_unit addVest "Vest_Normal_Quetzal_Winter_2";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Winter_3") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_3") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_3";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_3";};
      default {_unit addVest "Vest_Light_Quetzal_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Winter_3") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_3") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_3")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_3";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_3";};
      default {_unit addVest "Vest_Normal_Quetzal_Winter_3";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Winter_4") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_4") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_4";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_4";};
      default {_unit addVest "Vest_Light_Quetzal_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Winter_4") || (_vest == "Vest_Light_Quetzal_Lorflord_Winter_4") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Winter_4")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Winter_4";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Winter_4";};
      default {_unit addVest "Vest_Normal_Quetzal_Winter_4";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if ((_vest == "Vest_Light_Quetzal_Sea") || (_vest == "Vest_Light_Quetzal_Lorflord_Sea") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Sea";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Sea";};
      default {_unit addVest "Vest_Light_Quetzal_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if ((_vest == "Vest_Normal_Quetzal_Sea") || (_vest == "Vest_Light_Quetzal_Lorflord_Sea") || (_vest == "Vest_Light_Quetzal_Ghostkiller_Sea")) exitWith {};
    removeVest _unit;
    switch (_UID) do {
      case FCLA_customVest_UID_Lorflord: {_unit addVest "Vest_Light_Quetzal_Lorflord_Sea";};
      case FCLA_customVest_UID_Ghostkiller: {_unit addVest "Vest_Light_Quetzal_Ghostkiller_Sea";};
      default {_unit addVest "Vest_Normal_Quetzal_Sea";};
    };
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};


if ((_vest in _compatibleVests) && (_patche != "Patch_Medico")) exitWith {
  if (_vest in _blackLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackGLVests) exitWith {
    if (_vest == "Vest_GL_FCLA_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_FCLA_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenGLVests) exitWith {
    if (_vest == "Vest_GL_FCLA_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_FCLA_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPGLVests) exitWith {
    if (_vest == "Vest_GL_FCLA_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_FCLA_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalGLVests) exitWith {
    if (_vest == "Vest_GL_FCLA_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_GL_FCLA_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _blackCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_FCLA_Black") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_FCLA_Black";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _greenCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_FCLA_Green") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_FCLA_Green";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _MTPCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_FCLA_MTP") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_FCLA_MTP";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _tropicalCarrierVests) exitWith {
    if (_vest == "Vest_Special_Carrier_FCLA_Tropical") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Special_Carrier_FCLA_Tropical";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _EODVests) exitWith {
    if (_vest == "Vest_EOD_FCLA_Olive") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_EOD_FCLA_Olive";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Digital") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Digital";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _digitalNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Digital") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Digital";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Urban_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Urban_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanOneNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Urban_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Urban_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Urban_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Urban_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanTwoNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Urban_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Urban_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Urban_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Urban_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanThreeNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Urban_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Urban_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Urban_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Urban_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _urbanFourNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Urban_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Urban_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Winter_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Winter_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterOneNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Winter_1") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Winter_1";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Winter_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Winter_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterTwoNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Winter_2") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Winter_2";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Winter_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Winter_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterThreeNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Winter_3") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Winter_3";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Winter_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Winter_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _winterFourNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Winter_4") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Winter_4";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaLightVests) exitWith {
    if (_vest == "Vest_Light_FCLA_Sea") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Light_FCLA_Sea";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };

  if (_vest in _seaNormalVests) exitWith {
    if (_vest == "Vest_Normal_FCLA_Sea") exitWith {};
    removeVest _unit;
    _unit addVest "Vest_Normal_FCLA_Sea";
    {_unit addItemToVest _x} forEach _itemsInVest;
    true
  };
};
false
