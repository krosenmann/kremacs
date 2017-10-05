;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(defun start-new-docker-compose()
  "Dialog-mode for creating new docker-compose file"
  (interactive)
  (beginning-of-buffer)
  (insert
   (concat
    "version: " (read-string "version: " "2.1") "\n"
    "services: \n"
    "\s" (read-string "Service Name: " "") "\n"
    "\s\sbuild: \n"
    "    context: "(read-string "context: " ".") "\n"
    "\s\s\s\sdockerfile: " (read-string "dockerfile path: " "Dockerfile") "\n"
    "\s\s\s\simage: " (read-string "Image name: ") "\n"
    "    command: [" (read-string "Commands: " "") "\n"
    "    environment: \n"
    "    ports: \n"
    "      - " (read-string "Ports <external>:<internal>" "8000:8000") "\n"

    )))
(provide 'start-new-docker-compose)
