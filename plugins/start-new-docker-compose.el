;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.
                                        ;TODO: Я бы docker/Dockerfile предпочёл бы как путь для Dockerfile по умолчанию.
                                        ;TODO: Фичреквест ещё - генерить ключ, закрытый в env или в файл, открытый в буфер обмена, что бы сразу хуйнуть его в гитлаб.
                                        ;TODO: Под команду можно базовый шаблон хуйнуть python manage.py runserver 0.0.0.0:8000
                                        ;TODO: Шаблон под БДхи ещё хуйнуть - мускуль и постгрю.
                                        ;TODO: Депенденсы еще прописать, убрать ебланство и рекурсивный ввод добавить.
                                        ;TODO: 


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
    "FROM " (read-string "FROM: " "python:3.5") "\n"
    "ENV " (read-string "ENV: " "PYTHONBUFFER 1") "\n"
    "WORKDIR " (read-string "WORKDIR: " (concat "/srv/" docker-image-name "")) "\n"
    "ARG " (read-string "ARG: " (concat "DEPLOY_KEY=docker/" docker-image-name "/.ssh/id_rsa")) "\n"
    "COPY " (read-string "COPY: " "requirements.txt requirements.txt") "\n"
    "RUN " (read-string "RUN: " "curl -sL https://deb.nodesource.com/setup_8.x | bash \\") "\n"
    " && apt" (read-string " && apt: " "-get install -y nodejs rsync \\") "\n"
    " && npm " (read-string " && npm: " "install -g bower \\") "\n"
    " && pip " (read-string " && pip: " "install --no-cache-dir -r requirements.txt \\") "\n"
    " && rm " (read-string " && rm: " "-fr /var/lib/apt/lists/* /tmp/* /var/tmp/*") "\n"

    "ENTRYPOINT " (read-string "ENTRYPOINT: " "./manage.py") "\n"

    "COPY " (read-string "COPY: " ". .") "\n"

    "RUN " (read-string "RUN: " "npm update \\") "\n"
    " && bower" (read-string " && bower: " "update --allow-root") "\n"
    )))
