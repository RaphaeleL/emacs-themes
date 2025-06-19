(deftheme nightlion_v2
  "nightlion_v2-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (nightlion_v2-colors
        '(
          (bg         . "#171717")
          (fg         . "#bbbbbb")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#4c4c4c")
          (red        . "#bb0000")
          (green      . "#04f623")
          (yellow     . "#f3f167")
          (blue       . "#64d0f0")
          (magenta    . "#ce6fdb")
          (cyan       . "#00dadf")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#ff5555")
          (br-green   . "#7df71d")
          (br-yellow  . "#ffff55")
          (br-blue    . "#62cbe8")
          (br-magenta . "#ff9bf5")
          (br-cyan    . "#00ccd8")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nightlion_v2-colors)) 'unspecified))))

  (custom-theme-set-faces
   'nightlion_v2

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

(provide-theme 'nightlion_v2)
