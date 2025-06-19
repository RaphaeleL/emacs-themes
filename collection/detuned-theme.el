(deftheme detuned
  "detuned-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (detuned-colors
        '(
          (bg         . "#000000")
          (fg         . "#c7c7c7")
          (cursor     . "#c7c7c7")
          (cursor-txt . "#ffffff")
          (selection  . "#c7ddfc")
          (selection-fg . "#000000")
          (black      . "#171717")
          (red        . "#ea5386")
          (green      . "#b3e153")
          (yellow     . "#e4da81")
          (blue       . "#4192d3")
          (magenta    . "#8f3ef6")
          (cyan       . "#6cb4d5")
          (white      . "#c7c7c7")
          (br-black   . "#686868")
          (br-red     . "#ea86ac")
          (br-green   . "#c5e280")
          (br-yellow  . "#fdf38f")
          (br-blue    . "#55bbf9")
          (br-magenta . "#b9a0f9")
          (br-cyan    . "#7fd4fb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key detuned-colors)) 'unspecified))))

  (custom-theme-set-faces
   'detuned

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

(provide-theme 'detuned)
