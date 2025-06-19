(deftheme purplepeter
  "purplepeter-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (purplepeter-colors
        '(
          (bg         . "#2a1a4a")
          (fg         . "#ece7fa")
          (cursor     . "#c7c7c7")
          (cursor-txt . "#ffffff")
          (selection  . "#8689c2")
          (selection-fg . "#271c50")
          (black      . "#0a0520")
          (red        . "#ff796d")
          (green      . "#99b481")
          (yellow     . "#efdfac")
          (blue       . "#66d9ef")
          (magenta    . "#e78fcd")
          (cyan       . "#ba8cff")
          (white      . "#ffba81")
          (br-black   . "#100b23")
          (br-red     . "#f99f92")
          (br-green   . "#b4be8f")
          (br-yellow  . "#f2e9bf")
          (br-blue    . "#79daed")
          (br-magenta . "#ba91d4")
          (br-cyan    . "#a0a0d6")
          (br-white   . "#b9aed3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key purplepeter-colors)) 'unspecified))))

  (custom-theme-set-faces
   'purplepeter

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

(provide-theme 'purplepeter)
