// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `angular-cli.json`.

export const environment = {
  production: true,
  apiUrl: 'http://openbudget.kdvz-frechen.de',
  DAMUrl: 'http://openbudget.kdvz-frechen.de/dam',
  openCpuEndpoint: 'http://openbudget.kdvz-frechen.de/ocpu',
  versionSuffix: '3',
  baseHref: '/',
  DAMretries: 10,
  DAMpollingInitialStep: 1000,
  searchSize: 100,

};
