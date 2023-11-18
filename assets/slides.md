Title Slide:

<h1>
    The Drupal API Client
</h1>
<img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f973/512.gif" alt="🥳" width="250" height="250">
<p>
    <strong>Brian Perry</strong>
</p>
<p>
    New England Drupal Camp 2023
</p>

---

Me:

<h1>
    Me!
</h1>
<img class="box" src="/sites/default/files/inline-images/brian.jpg" data-entity-uuid="fab5150e-3fcb-4675-88cd-48c5477b854d" data-entity-type="file" alt="Brian Surfing" width="500" height="500">

---

View Transitions:

<h1>
    Side Note: View Transitions!
</h1>
<img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f92f/512.gif" alt="🤯" width="250" height="250">
<p>
    These slides are just a series of Drupal nodes. Check out the <strong>view_transitions</strong> module :)
</p>

---

Overview:

<h1>
    Drupal API Client Project
</h1>
<ul>
    <li>
        JavaScript packages to source data from common Drupal APIs
    </li>
    <li>
        Offered under the Drupal namespace on NPM (hopefully)
    </li>
</ul>

---

Pitchburgh:

<h1>
    'Pitch-burgh'
</h1>
<img class="box" src="/sites/default/files/inline-images/pitchburgh.png" data-entity-uuid="343263b0-65d9-4168-acef-8a7e0f24cc94" data-entity-type="file" alt="Pitch-burgh Voting" width="800" height="800">
<p>
    Funded for 10K!
</p>

---

10K Question:

<h1>
    The $10,000.00 Question
</h1>
<img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f911/512.gif" alt="🤑" width="250" height="250">
<p>
    Why does Drupal need an API Client?
</p>

---

NPM Tells a Story:

<h1>
    NPM Tells a Story
</h1>
<img src="/sites/default/files/inline-images/drupal_npm.png" data-entity-uuid="487c4268-af64-4e0e-8e7e-7862ee0e618b" data-entity-type="file" alt="A search for Drupal on NPM" width="750" height="750" class="box">

---

Drupal Namespace:

<img class="box" src="/sites/default/files/inline-images/drupal_namespace.png" data-entity-uuid="5df88f68-c868-4aae-879a-77e26542ffea" data-entity-type="file" alt="Drupal Namespace on NPM" width="1000" height="750">

---

NPM WordPress:

<img class="box" src="/sites/default/files/inline-images/wordpress_npm.png" data-entity-uuid="75b6d0bd-f8cb-475b-8ed8-125e2f0166cc" data-entity-type="file" alt="WordPress NPM Search" width="750" height="750">

---

NPM Contentful:

<img class="box" src="/sites/default/files/inline-images/contentful.png" data-entity-uuid="85cbf6f0-09a3-47bf-994a-b074b73e93a6" data-entity-type="file" alt="Contentful NPM Search" width="1000" height="1000">

---

Multiple Projects:

<h1>
    Multiple Competing projects
</h1>
<ul>
  <li>Drupal JS SDK</li>
  <li>Drupal State</li>
  <li>Drupal SDK</li>
  <li>Next.js for Drupal Client</li>
  <li>Drupal Kit</li>
</ul>

---

Drupal State Example:

<h1>
    They all... look...
</h1>
<pre><code class="language-javascript">import { DrupalState } from '@gdwc/drupal-state';
const store = new DrupalState({
  apiBase: 'https://dev-ds-demo.pantheonsite.io',
  apiPrefix: 'jsonapi', // optional, defaults to 'jsonapi'
});
// Get recipies from API and store locally
const recipesFromApi = await store.getObject({ objectName: 'node--recipe' });
// Get existing article from local store
const recipeFromStore = await store.getObject({
  objectName: 'recipes',
  id: '33386d32-a87c-44b9-b66b-3dd0bfc38dca',
});</code></pre>
<p>
    (Drupal State Example)
</p>

---

Next for Drupal Example:

<h1>
    ...similar
</h1>
<pre><code class="language-javascript">import { DrupalClient } from "next-drupal"
// Create a new DrupalClient.
const drupal = new DrupalClient("https://example.com")
// Fetch articles.
const articles = await drupal.getResourceCollection("node--article")
// Fetch one article by id.
const article = await drupal.getResource(
  "node--article",
  "f4c61473-8297-4bf3-bab7-21c9633a7ca7"
)</code></pre>
<p>
    (Next for Drupal Client Example)
</p>

---

Key Differences:

<h1>
    With Some Key Differences
</h1>
<img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f978/512.gif" alt="🥸" width="250" height="250">
<ul>
    <li>
        Serve slightly different needs and priorities
    </li>
    <li>
        Some are framwework specific
    </li>
    <li>
        Different sets of maintainers
    </li>
</ul>

---

Maybe We're Wrong:

<h1>
    Hey, maybe we're all wrong
</h1>
<p>
    But I don't think so :)
</p>

---

Funding Commitment:

<h1>
    Our Commitment for Pitch-burgh Funding
</h1>
<ul>
    <li>
        'Vertical Slice' POC
    </li>
    <li>
        Proposal for Drupal JS Maintainers
    </li>
    <li>
        json-api-client 1.0 release
    </li>
</ul>
<aside>
    <p>
        Like SOWs? <a href="https://docs.google.com/document/d/1-_7PN9p0LSUIbZa-7EkLmdIO7kswSF65IY012yoWRis/edit#heading=h.k9vbodx1ps94" target="_blank">Here's ours.</a>
    </p>
</aside>

---

Multiple Clients:

<h1>
    A design to support multiple clients
</h1>
<ul>
  <li>API Client Base Class</li>
  <li>Specific client implementations extend this class</li>
</ul>
<aside><a href="https://codesandbox.io/s/drupal-api-client-poc-tz8k42" target="_blank">Our Earliest Demo!</a></aside>

---

Extendable Base:

<h1>
    An extendable base
</h1>
<img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f4ab/512.gif" alt="💫" width="250" height="250">
<p>
    A developer could...
</p>
<ul>
    <li>
        Extend the base class to quickly create a GraphQL client
    </li>
    <li>
        Publish a json-api-client that automatically uses a specific state management solution
    </li>
    <li>
        Use only our individual authentication utilities
    </li>
    <li>
        Bundle the json-api-client in an Astro starter
    </li>
</ul>

---

Supporting use case:

<h1>
    Just this week...
</h1>
<img class="box" src="/sites/default/files/inline-images/extend-slack.png" data-entity-uuid="4f41eb41-5f11-4218-9e71-d9b30f74c2af" data-entity-type="file" alt="A slack message about a possible use case">

---

POC Scope:

<h1>
    Vertical Slice POC Scope
</h1>
<h3>
    Get a collection of resources for a specific resource type
</h3>
<ul>
  <li>Establishes all client-level configuration options</li>
  <li>Will make implementing future methods easier</li>
  <li>Facilitate deeper discussion with community</li>
</ul>
<aside>Meta issue: <a href="https://www.drupal.org/project/api_client/issues/3365506" target="_new">#3365506</a></aside>

---

Basic Example

<h1>
    POC Released as 0.1.0!
</h1>
<pre><code class="language-plaintext">npm i @drupal-api-client/json-api-client</code></pre>
<aside>
    <p>
        Demo: <a href="https://codesandbox.io/s/drupal-api-client-json-api-client-basic-example-54t589?file=/src/index.mjs" target="_blank">Basic Example</a>
    </p>
</aside>

---

Config options:

<h1>
    Proposed Configuration Options
</h1>
<img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f916/512.gif" alt="🤖" width="250" height="250">
<p>
    Provide a default, but allow many possible overrides.
</p>

---

Authentication: 

<h1>
    Authentication
</h1>
<h3>
    Support common Drupal authentication approaches
</h3>
<p>
    Start with basic auth.
</p>
<aside>
    <p>
        Issue <a href="https://www.drupal.org/project/api_client/issues/3376937">#3376937</a>
    </p>
</aside>

---

Auth Code:

<pre><code class="language-javascript">import JsonApiClient from "@drupal-api-client/json-api-client";
async function main() {
  const client = new JsonApiClient(
    "https://dev-drupal-api-client-poc.pantheonsite.io",
    {
      // the optional authentication object will be used to authenticate requests.
      // Currently Basic auth is supported.
      authentication: {
        type: "Basic",
        // It is recommended to store sensitive information in environment variables that
        // are not checked in to the source code.
        username: process.env.MY_USERNAME,
        password: process.env.MY_SECRET_PASSWORD
      }
    }
  );
  const collection = await client.get("node--recipe");
  console.log("Recipe collection", collection);
}
main();</code></pre>

---

Custom Fetch:

<h1>
    Custom Fetch
</h1>
<h3>
    Allow users to bring their own fetch method
</h3>
<p>
    Start with Fetch compatible APIs.
</p>
<aside>Issue <a href="https://www.drupal.org/project/api_client/issues/3376929">#3376929</a></aside>

---

Fetch Example:

<pre class="box"><code class="language-javascript">import JsonApiClient from "@drupal-api-client/json-api-client";
async function main() {
  const client = new JsonApiClient(
    "https://dev-drupal-api-client-poc.pantheonsite.io",
    {
      // supply a custom fetch method in order to add  certain headers to each request
      // or any other logic you may need before the fetch call
      customFetch: (input: RequestInfo | URL, init?: RequestInit) =&gt; {
        const newHeaders = new Headers(init?.headers);
        newHeaders.set("Content-Type", "application/json");
        const newInit = {
          ...init,
          headers: newHeaders
        };
        return fetch(input, newInit);
      }
    }
  );
  const collection = await client.get("node--recipe");
  console.log("Recipe collection", collection);
}
main();</code></pre>

---

Local Caching:

<h1>
    Local Caching
</h1>
<h3>
    Cache data using the library of your choice
</h3>
<p>
    Start with session storage example.
</p>
<aside>
    <p>
        Issue <a href="https://www.drupal.org/project/api_client/issues/3377144">#3377144</a> / <a href="https://codesandbox.io/s/drupal-api-client-json-api-client-cache-option-znkk9m?file=/src/index.ts" target="_blank">Demo</a>
    </p>
</aside>

---

Logging:

<h1>
    Logging
</h1>
<h3>
    Log for debugging or to the service of your choice
</h3>
<p>
    Ship with console log equivalents
</p>
<aside>
    <p>
        Issue <a href="https://www.drupal.org/project/api_client/issues/3377144">#3377144</a> / <a href="https://codesandbox.io/s/drupal-api-client-json-api-client-debug-option-w2n9fx?file=/src/index.ts" target="_blank">Demo</a>
    </p>
</aside>

---

Deserialization:

<h1>
    Deserialization
</h1>
<h3>
    Convert response into simplified JS object
</h3>
<p>
    Don't deserialize by default, but establish API
</p>
<aside>Issue <a href="https://www.drupal.org/project/api_client/issues/3377191" target="_blank">#3377191</a> / <a href="https://codesandbox.io/s/drupal-api-client-json-api-client-deserialization-example-7hsjgx?file=/src/index.ts" target="_blank">Demo</a></aside>

---

Localization:

<h1>
    Localization
</h1>
<h3>
    Easily source content in different languages
</h3>
<pre class="box"><code class="language-javascript">import JsonApiClient from "@drupal-api-client/json-api-client";
async function main() {
  const client = new JsonApiClient(
    "https://dev-drupal-api-client-poc.pantheonsite.io",
    {
      // The default locale will be in the URL of each request.
      // example: https://drupal.example.com/en/jsonapi/node/article
      defaultLocale: "en",
    }
  );
  const collection = await client.get("node--recipe");
  console.log("Recipe collection", collection);
}
main();</code></pre>
<aside>
    <p>
        Issue <a href="https://www.drupal.org/project/api_client/issues/3377803">#3377803</a>
    </p>
</aside>

---

Query Params:

