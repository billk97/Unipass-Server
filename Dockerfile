FROM hirokimatsumoto/alpine-openjdk-11

ENV APP_ROOT /app

RUN mkdir ${APP_ROOT}

WORKDIR ${APP_ROOT}

COPY target/*.jar ${APP_ROOT}/run.jar

ENTRYPOINT ["java", "-jar", "run.jar"]