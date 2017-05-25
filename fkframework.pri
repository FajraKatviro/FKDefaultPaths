
include(fkframeworkpath.pri)

!isEmpty(FK_FRAMEWORK_PATH){
    contains(FK, mobile):include($$FK_UTILS_FOLDER/fkdeploy_mobile.pri)
    contains(FK, deploy):include($$FK_UTILS_FOLDER/fkdeploy.pri)
    contains(FK, imageset):include($$FK_UTILS_FOLDER/fkimageset.pri)
    contains(FK, modules):include($$FK_UTILS_FOLDER/fkmodules.pri)
}else{
    error("FKFramework path is not set")
}
