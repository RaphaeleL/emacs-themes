(deftheme funforrest
  "funforrest-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (funforrest-colors
        '(
          (bg         . "#251200")
          (fg         . "#dec165")
          (cursor     . "#e5591c")
          (cursor-txt . "#000000")
          (selection  . "#e5591c")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#d6262b")
          (green      . "#919c00")
          (yellow     . "#be8a13")
          (blue       . "#4699a3")
          (magenta    . "#8d4331")
          (cyan       . "#da8213")
          (white      . "#ddc265")
          (br-black   . "#7f6a55")
          (br-red     . "#e55a1c")
          (br-green   . "#bfc65a")
          (br-yellow  . "#ffcb1b")
          (br-blue    . "#7cc9cf")
          (br-magenta . "#d26349")
          (br-cyan    . "#e6a96b")
          (br-white   . "#ffeaa3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key funforrest-colors)) 'unspecified))))

  (custom-theme-set-faces
   'funforrest

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

(provide-theme 'funforrest)
