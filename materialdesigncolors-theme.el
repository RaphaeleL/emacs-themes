(deftheme materialdesigncolors
  "materialdesigncolors-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (materialdesigncolors-colors
        '(
          (bg         . "#1d262a")
          (fg         . "#e7ebed")
          (cursor     . "#eaeaea")
          (cursor-txt . "#000000")
          (selection  . "#4e6a78")
          (selection-fg . "#e7ebed")
          (black      . "#435b67")
          (red        . "#fc3841")
          (green      . "#5cf19e")
          (yellow     . "#fed032")
          (blue       . "#37b6ff")
          (magenta    . "#fc226e")
          (cyan       . "#59ffd1")
          (white      . "#ffffff")
          (br-black   . "#a1b0b8")
          (br-red     . "#fc746d")
          (br-green   . "#adf7be")
          (br-yellow  . "#fee16c")
          (br-blue    . "#70cfff")
          (br-magenta . "#fc669b")
          (br-cyan    . "#9affe6")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key materialdesigncolors-colors)) 'unspecified))))

  (custom-theme-set-faces
   'materialdesigncolors

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

(provide-theme 'materialdesigncolors)
