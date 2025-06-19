(deftheme lovelace
  "lovelace-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (lovelace-colors
        '(
          (bg         . "#1d1f28")
          (fg         . "#fdfdfd")
          (cursor     . "#c574dd")
          (cursor-txt . "#ffffff")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#282a36")
          (red        . "#f37f97")
          (green      . "#5adecd")
          (yellow     . "#f2a272")
          (blue       . "#8897f4")
          (magenta    . "#c574dd")
          (cyan       . "#79e6f3")
          (white      . "#fdfdfd")
          (br-black   . "#414458")
          (br-red     . "#ff4971")
          (br-green   . "#18e3c8")
          (br-yellow  . "#ff8037")
          (br-blue    . "#556fff")
          (br-magenta . "#b043d1")
          (br-cyan    . "#3fdcee")
          (br-white   . "#bebec1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key lovelace-colors)) 'unspecified))))

  (custom-theme-set-faces
   'lovelace

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

(provide-theme 'lovelace)
