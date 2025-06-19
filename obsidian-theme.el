(deftheme obsidian
  "obsidian-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (obsidian-colors
        '(
          (bg         . "#283033")
          (fg         . "#cdcdcd")
          (cursor     . "#c0cad0")
          (cursor-txt . "#cdcdcd")
          (selection  . "#3e4c4f")
          (selection-fg . "#dfe1e2")
          (black      . "#000000")
          (red        . "#a60001")
          (green      . "#00bb00")
          (yellow     . "#fecd22")
          (blue       . "#3a9bdb")
          (magenta    . "#bb00bb")
          (cyan       . "#00bbbb")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#ff0003")
          (br-green   . "#93c863")
          (br-yellow  . "#fef874")
          (br-blue    . "#a1d7ff")
          (br-magenta . "#ff55ff")
          (br-cyan    . "#55ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key obsidian-colors)) 'unspecified))))

  (custom-theme-set-faces
   'obsidian

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

(provide-theme 'obsidian)
