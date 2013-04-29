
(cl:in-package :asdf)

(defsystem "cgr_localization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LocalizationInterfaceSrv" :depends-on ("_package_LocalizationInterfaceSrv"))
    (:file "_package_LocalizationInterfaceSrv" :depends-on ("_package"))
  ))