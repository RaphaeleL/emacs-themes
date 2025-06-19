(deftheme blueberrypie
  "blueberrypie-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (blueberrypie-colors
        '(
          (bg         . "#1c0c28")
          (fg         . "#babab9")
          (cursor     . "#fcfad6")
          (cursor-txt . "#000000")
          (selection  . "#606060")
          (selection-fg . "#ffffff")
          (black      . "#0a4c62")
          (red        . "#99246e")
          (green      . "#5cb1b3")
          (yellow     . "#eab9a8")
          (blue       . "#90a5bd")
          (magenta    . "#9d54a7")
          (cyan       . "#7e83cc")
          (white      . "#f0e8d6")
          (br-black   . "#201637")
          (br-red     . "#c87272")
          (br-green   . "#0a6c7e")
          (br-yellow  . "#7a3188")
          (br-blue    . "#39173d")
          (br-magenta . "#bc94b7")
          (br-cyan    . "#5e6071")
          (br-white   . "#0a6c7e")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key blueberrypie-colors)) 'unspecified))))

  (custom-theme-set-faces
   'blueberrypie

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

(provide-theme 'blueberrypie)
