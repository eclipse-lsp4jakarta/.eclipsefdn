local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.lsp4jakarta', 'eclipse-lsp4jakarta') {
  settings+: {
    description: "",
    name: "Eclipse LSP4Jakarta project",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('lsp4jakarta') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Language Server for Jakarta EE",
      homepage: "",
      topics+: [
        "eclipse",
        "jakartaee",
        "java"
      ],
      web_commit_signoff_required: false,
    },
  ],
}
