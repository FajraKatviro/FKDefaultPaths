
isEmpty(FK_FRAMEWORK_PATH){

    QMAKE_SPEC_T = $$[QMAKE_SPEC]

    contains(QMAKE_SPEC_T,.*win32.*){
        FK_FRAMEWORK_PATH = $$system_path($$(APPDATA)/FKFramework)
    }

    contains(QMAKE_SPEC_T,.*macx.*){
        FK_FRAMEWORK_PATH = $$system_path(/$$(HOME)/Applications/FKFramework)
    }

    contains(QMAKE_SPEC_T,.*linux.*){
        FK_FRAMEWORK_PATH = $$system_path(/$$(HOME)/FKFramework)
    }

}

!isEmpty(FK_FRAMEWORK_PATH){
    FK_TOOLS_FOLDER = $$FK_FRAMEWORK_PATH/tools
    FK_UTILS_FOLDER = $$FK_FRAMEWORK_PATH/utils
}

export(FK_FRAMEWORK_PATH)
export(FK_TOOLS_FOLDER)
export(FK_UTILS_FOLDER)
