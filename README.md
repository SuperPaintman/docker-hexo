# Docker Hexo

[![Image Layers][imagelayers-image]][imagelayers-url]

[Docker][docker-url] image for [Hexo][hexo-url]


## Usage with docker-compose

**docker-compose.yml**

```yaml
version: "2"
services:
  # Phabricator
  phabricator:
    image: superpaintman/hexo

    container_name: hexo

    restart: always

    ports:
      - "4000:4000"
    volumes:
      - /apps/blog:/app

    environment:
      NODE_PORT: 4000
```


--------------------------------------------------------------------------------

## Configuring
### Volumes
| Volume                 | Required | Comment                      |
|------------------------|----------|------------------------------|
| **/app**               | `No`     | Main **Hexo** project folder |

### Environment variables
| Env                    | Comment | Default |
|------------------------|---------|---------|
| **NODE_PORT**          |         | *4000*  |

[docker-url]: //www.docker.com/
[phabricator-url]: //hexo.io/
[imagelayers-image]: //badge.imagelayers.io/superpaintman/hexo:latest.svg
[imagelayers-url]: //imagelayers.io/?images=superpaintman%2Fhexo:latest