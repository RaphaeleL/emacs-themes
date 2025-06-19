(deftheme toychest
  "toychest-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (toychest-colors
        '(
          (bg         . "#24364b")
          (fg         . "#31d07b")
          (cursor     . "#d5d5d5")
          (cursor-txt . "#141c25")
          (selection  . "#5f217a")
          (selection-fg . "#d5d5d5")
          (black      . "#2c3f58")
          (red        . "#be2d26")
          (green      . "#1a9172")
          (yellow     . "#db8e27")
          (blue       . "#325d96")
          (magenta    . "#8a5edc")
          (cyan       . "#35a08f")
          (white      . "#23d183")
          (br-black   . "#336889")
          (br-red     . "#dd5944")
          (br-green   . "#31d07b")
          (br-yellow  . "#e7d84b")
          (br-blue    . "#34a6da")
          (br-magenta . "#ae6bdc")
          (br-cyan    . "#42c3ae")
          (br-white   . "#d5d5d5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key toychest-colors)) 'unspecified))))

  (custom-theme-set-faces
   'toychest

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

(provide-theme 'toychest)
