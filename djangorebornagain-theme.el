(deftheme djangorebornagain
  "djangorebornagain-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (djangorebornagain-colors
        '(
          (bg         . "#051f14")
          (fg         . "#dadedc")
          (cursor     . "#ffcc00")
          (cursor-txt . "#dadedc")
          (selection  . "#203727")
          (selection-fg . "#dadedc")
          (black      . "#000000")
          (red        . "#fd6209")
          (green      . "#41a83e")
          (yellow     . "#ffe862")
          (blue       . "#245032")
          (magenta    . "#f8f8f8")
          (cyan       . "#9df39f")
          (white      . "#ffffff")
          (br-black   . "#323232")
          (br-red     . "#ff943b")
          (br-green   . "#73da70")
          (br-yellow  . "#ffff94")
          (br-blue    . "#568264")
          (br-magenta . "#ffffff")
          (br-cyan    . "#cfffd1")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key djangorebornagain-colors)) 'unspecified))))

  (custom-theme-set-faces
   'djangorebornagain

   `(default ((,class (:background ,(funcall safe-get-color 'bg)
                                   :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor)
                                  :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)
                                  :foreground ,(funcall safe-get-color 'selection-fg)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'blue)
                                             :weight bold))))
   `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-yellow)
                                            :foreground ,(funcall safe-get-color 'bg)
                                            :weight bold))))
   `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'br-red)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))))

(provide-theme 'djangorebornagain)
