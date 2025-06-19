(deftheme adwaita
  "adwaita-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (adwaita-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#000000")
          (cursor     . "#000000")
          (cursor-txt . "#ffffff")
          (selection  . "#c0bfbc")
          (selection-fg . "#000000")
          (black      . "#241f31")
          (red        . "#c01c28")
          (green      . "#2ec27e")
          (yellow     . "#f5c211")
          (blue       . "#1e78e4")
          (magenta    . "#9841bb")
          (cyan       . "#0ab9dc")
          (white      . "#c0bfbc")
          (br-black   . "#5e5c64")
          (br-red     . "#ed333b")
          (br-green   . "#57e389")
          (br-yellow  . "#f8e45c")
          (br-blue    . "#51a1ff")
          (br-magenta . "#c061cb")
          (br-cyan    . "#4fd2fd")
          (br-white   . "#f6f5f4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key adwaita-colors)) 'unspecified))))

  (custom-theme-set-faces
   'adwaita

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

(provide-theme 'adwaita)
