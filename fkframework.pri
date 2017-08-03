
include(fkframeworkpath.pri)

!isEmpty(FK_FRAMEWORK_PATH){
    include($$FK_FRAMEWORK_PATH/fkfeatures.pri)
}else{
    error("FKFramework path is not set")
}
