(deftheme retro
  "retro-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (retro-colors
        '(
          (bg         . "#000000")
          (fg         . "#13a10e")
          (cursor     . "#13a10e")
          (cursor-txt . "#000000")
          (selection  . "#ffffff")
          (selection-fg . "#000000")
          (black      . "#13a10e")
          (red        . "#13a10e")
          (green      . "#13a10e")
          (yellow     . "#13a10e")
          (blue       . "#13a10e")
          (magenta    . "#13a10e")
          (cyan       . "#13a10e")
          (white      . "#13a10e")
          (br-black   . "#16ba10")
          (br-red     . "#16ba10")
          (br-green   . "#16ba10")
          (br-yellow  . "#16ba10")
          (br-blue    . "#16ba10")
          (br-magenta . "#16ba10")
          (br-cyan    . "#16ba10")
          (br-white   . "#16ba10")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key retro-colors)) 'unspecified))))

  (custom-theme-set-faces
   'retro

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

(provide-theme 'retro)
