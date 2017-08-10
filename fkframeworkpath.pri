
isEmpty(FK_FRAMEWORK_PATH){

#todo: remove
    QMAKE_SPEC_T = $$[QMAKE_SPEC]

#todo: change to QMAKE_HOST
    contains(QMAKE_SPEC_T,.*win32.*){
        FK_FRAMEWORK_PATH = $$system_path($$(APPDATA)/FKFramework)
    }

#todo: change to QMAKE_HOST
    contains(QMAKE_SPEC_T,.*macx.*){
        FK_FRAMEWORK_PATH = $$system_path(/$$(HOME)/Applications/FKFramework)
    }

    equals(QMAKE_HOST.os, Linux){
        FK_FRAMEWORK_PATH = $$system_path(/$$(HOME)/FKFramework)
    }

}

!isEmpty(FK_FRAMEWORK_PATH){
    FK_UTILS_FOLDER = $$system_path($$FK_FRAMEWORK_PATH/utils)
}else{
    error("Unable to reslove FK_FRAMEWORK_PATH")
}

export(FK_FRAMEWORK_PATH)
export(FK_UTILS_FOLDER)
