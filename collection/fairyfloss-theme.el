(deftheme fairyfloss
  "fairyfloss-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (fairyfloss-colors
        '(
          (bg         . "#5a5475")
          (fg         . "#f8f8f2")
          (cursor     . "#f8f8f0")
          (cursor-txt . "#060709")
          (selection  . "#8077a8")
          (selection-fg . "#f6e1ce")
          (black      . "#040303")
          (red        . "#f92672")
          (green      . "#c2ffdf")
          (yellow     . "#e6c000")
          (blue       . "#c2ffdf")
          (magenta    . "#ffb8d1")
          (cyan       . "#c5a3ff")
          (white      . "#f8f8f0")
          (br-black   . "#6090cb")
          (br-red     . "#ff857f")
          (br-green   . "#c2ffdf")
          (br-yellow  . "#ffea00")
          (br-blue    . "#c2ffdf")
          (br-magenta . "#ffb8d1")
          (br-cyan    . "#c5a3ff")
          (br-white   . "#f8f8f0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key fairyfloss-colors)) 'unspecified))))

  (custom-theme-set-faces
   'fairyfloss

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

(provide-theme 'fairyfloss)
