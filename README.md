# With Docker


Application ECORIDE :

https://ecoride-app-mu.vercel.app

This examples shows how to use Docker with Next.js based on the [deployment documentation](https://nextjs.org/docs/deployment#docker-image). Additionally, it contains instructions for deploying to Google Cloud Run. However, you can use any container-based deployment host.

## How to use

Execute [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app) with [npm](https://docs.npmjs.com/cli/init), [Yarn](https://yarnpkg.com/lang/en/docs/cli/create/), [pnpm](https://pnpm.io) or [bun](https://bun.sh/docs/cli/bun-create) to bootstrap the example:

```bash
npx create-next-app --example with-docker nextjs-docker
```

```bash
yarn create next-app --example with-docker nextjs-docker
```

```bash
pnpm create next-app --example with-docker nextjs-docker
```

```bash
bun create next-app --example with-docker nextjs-docker
```

## Using Docker

1. [Install Docker](https://docs.docker.com/get-docker/) on your machine.
1. Build your container: 
    ```bash
    # For npm, pnpm or yarn
    docker build -t nextjs-docker .
    
    # For bun
    docker build -f Dockerfile.bun -t nextjs-docker .
    ```
1. Run your container: `docker run -p 3000:3000 nextjs-docker`.

You can view your images created with `docker images`.

### In existing projects

To add Docker support, copy [`Dockerfile`](https://github.com/vercel/next.js/blob/canary/examples/with-docker/Dockerfile) to the project root. If using Bun, copy [`Dockerfile.bun`](https://github.com/vercel/next.js/blob/canary/examples/with-docker/Dockerfile.bun) instead. Then add the following to next.config.js:

```js
// next.config.js
module.exports = {
  // ... rest of the configuration.
  output: "standalone",
};
```

This will build the project as a standalone app inside the Docker image.

## Deploying to Google Cloud Run

1. Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) so you can use `gcloud` on the command line.
1. Run `gcloud auth login` to log in to your account.
1. [Create a new project](https://cloud.google.com/run/docs/quickstarts/build-and-deploy) in Google Cloud Run (e.g. `nextjs-docker`). Ensure billing is turned on.
1. Build your container image using Cloud Build: `gcloud builds submit --tag gcr.io/PROJECT-ID/helloworld --project PROJECT-ID`. This will also enable Cloud Build for your project.
1. Deploy to Cloud Run: `gcloud run deploy --image gcr.io/PROJECT-ID/helloworld --project PROJECT-ID --platform managed --allow-unauthenticated`. Choose a region of your choice.

   - You will be prompted for the service name: press Enter to accept the default name, `helloworld`.
   - You will be prompted for [region](https://cloud.google.com/run/docs/quickstarts/build-and-deploy#follow-cloud-run): select the region of your choice, for example `us-central1`.

## Running Locally

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
bun run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.js`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.js`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.



<img width="845" height="563" alt="Capture d’écran 2025-09-18 à 19 18 29" src="https://github.com/user-attachments/assets/7e952d74-0be2-4cd4-b061-7b5921fac8b6" />



<img width="626" height="507" alt="Capture d’écran 2025-09-18 à 19 16 27" src="https://github.com/user-attachments/assets/87ee4b80-eee0-43c0-b601-97c336a4fcb7" />




<img width="1260" height="986" alt="Capture d’écran 2025-09-18 à 19 48 43" src="https://github.com/user-attachments/assets/270f2a47-f14f-48ba-be0f-00044fc7908a" />






![IMG_5124](https://github.com/user-attachments/assets/f290a8a3-074a-4082-98d2-926d49f05fa1)









