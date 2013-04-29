
(cl:in-package :asdf)

(defsystem "cgr_localization-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DisplayMsg" :depends-on ("_package_DisplayMsg"))
    (:file "_package_DisplayMsg" :depends-on ("_package"))
    (:file "LocalizationMsg" :depends-on ("_package_LocalizationMsg"))
    (:file "_package_LocalizationMsg" :depends-on ("_package"))
  ))