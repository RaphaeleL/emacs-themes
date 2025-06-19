(deftheme tokyonight_moon
  "tokyonight_moon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tokyonight_moon-colors
        '(
          (bg         . "#222436")
          (fg         . "#c8d3f5")
          (cursor     . "#c8d3f5")
          (cursor-txt . "#222436")
          (selection  . "#2d3f76")
          (selection-fg . "#c8d3f5")
          (black      . "#1b1d2b")
          (red        . "#ff757f")
          (green      . "#c3e88d")
          (yellow     . "#ffc777")
          (blue       . "#82aaff")
          (magenta    . "#c099ff")
          (cyan       . "#86e1fc")
          (white      . "#828bb8")
          (br-black   . "#444a73")
          (br-red     . "#ff757f")
          (br-green   . "#c3e88d")
          (br-yellow  . "#ffc777")
          (br-blue    . "#82aaff")
          (br-magenta . "#c099ff")
          (br-cyan    . "#86e1fc")
          (br-white   . "#c8d3f5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tokyonight_moon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tokyonight_moon

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

(provide-theme 'tokyonight_moon)
