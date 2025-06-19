(deftheme alabaster
  "alabaster-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (alabaster-colors
        '(
          (bg         . "#f7f7f7")
          (fg         . "#000000")
          (cursor     . "#007acc")
          (cursor-txt . "#bfdbfe")
          (selection  . "#bfdbfe")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#aa3731")
          (green      . "#448c27")
          (yellow     . "#cb9000")
          (blue       . "#325cc0")
          (magenta    . "#7a3e9d")
          (cyan       . "#0083b2")
          (white      . "#f7f7f7")
          (br-black   . "#777777")
          (br-red     . "#f05050")
          (br-green   . "#60cb00")
          (br-yellow  . "#ffbc5d")
          (br-blue    . "#007acc")
          (br-magenta . "#e64ce6")
          (br-cyan    . "#00aacb")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key alabaster-colors)) 'unspecified))))

  (custom-theme-set-faces
   'alabaster

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

(provide-theme 'alabaster)
