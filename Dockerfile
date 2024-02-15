# Delete files older than 15 days

# Copyright (c) 2023-2024 Società Astronomica G.V. Schiaparelli <dario.pilori@astrogeo.va.it>
# SPDX-License-Identifier: MIT

FROM alpine:latest
VOLUME /data
ENTRYPOINT ["find"]
CMD ["/data", "-mtime", "+15", "-delete"]
