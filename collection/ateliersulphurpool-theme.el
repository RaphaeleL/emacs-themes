(deftheme ateliersulphurpool
  "ateliersulphurpool-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ateliersulphurpool-colors
        '(
          (bg         . "#202746")
          (fg         . "#979db4")
          (cursor     . "#979db4")
          (cursor-txt . "#202746")
          (selection  . "#5e6687")
          (selection-fg . "#979db4")
          (black      . "#202746")
          (red        . "#c94922")
          (green      . "#ac9739")
          (yellow     . "#c08b30")
          (blue       . "#3d8fd1")
          (magenta    . "#6679cc")
          (cyan       . "#22a2c9")
          (white      . "#979db4")
          (br-black   . "#6b7394")
          (br-red     . "#c76b29")
          (br-green   . "#293256")
          (br-yellow  . "#5e6687")
          (br-blue    . "#898ea4")
          (br-magenta . "#dfe2f1")
          (br-cyan    . "#9c637a")
          (br-white   . "#f5f7ff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ateliersulphurpool-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ateliersulphurpool

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

(provide-theme 'ateliersulphurpool)
