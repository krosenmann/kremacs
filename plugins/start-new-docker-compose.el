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
    "\s" (read-string "Service Name: " "") ": \n"
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

(defun start-new-dockerfile ()
  "Dialog-mode for creating new dockerfile"
  (interactive)
  (beginning-of-buffer)
  (setq docker-image-name (read-string "Image prefix" "def-image"))
  (insert
   (concat
    "FROM" (read-string "FROM: " "python:3.5") "\n"
    "ENV" (read-string "ENV: " "PYTHONBUFFER 1") "\n"
    "WORKDIR" (read-string "WORKDIR: " "/srv/" docker-image-name "") "\n"
    "ARG" (read-string "ARG: " "DEPLOY_KEY=docker/" docker-image-name "/.ssh/id_rsa") "\n"
    "COPY" (read-string "COPY: " "requirements.txt requirements.txt") "\n"
;; COPY docker/"docker-image-name"/.ssh/id_rsa /root/.ssh/
;; COPY docker/"docker-image-name"/ssh_config /root/.ssh/config

;; RUN chmod 700 /root/.ssh
;; RUN chmod 600 /root/.ssh/id_rsa
;; RUN chmod 644 /root/.ssh/config
;; RUN chown -R root:root /root/.ssh

"RUN" (read-string "RUN: " "curl -sL https://deb.nodesource.com/setup_8.x | bash \\") "\n"
" && apt" (read-string " && apt: "-"get install -y nodejs rsync \\") "\n"
" && npm" (read-string " && npm: " "install -g bower \\") "\n"
" && pip" (read-string " && pip: " "install --no-cache-dir -r requirements.txt \\") "\n"
" && rm" (read-string " && rm: " "-fr /var/lib/apt/lists/* /tmp/* /var/tmp/*") "\n"

"ENTRYPOINT" (read-string "ENTRYPOINT: " "./manage.py") "\n"

"COPY" (read-string "COPY: " ". .") "\n"

"RUN" (read-string "RUN: " "npm update \\") "\n"
" && bower" (read-string " && bower: " "update --allow-root") "\n"
)))
