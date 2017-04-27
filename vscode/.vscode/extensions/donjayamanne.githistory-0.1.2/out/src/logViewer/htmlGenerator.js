"use strict";
var he_1 = require('he');
function generateErrorView(error) {
    return "\n        <div class=\"error-box animated pulse\">\n            <div class=\"error-icon\"><i class=\"octicon octicon-stop\" aria-hidden=\"true\"></i></div>\n            <h1 class=\"error-title\">Error</h1>\n            <div class=\"error-details\">" + error + "</div>\n        </div>\n    ";
}
exports.generateErrorView = generateErrorView;
function generateProgressHtmlView(progressMessage) {
    return "\n        <div class =\"container\">\n            <div>" + he_1.encode(progressMessage) + "</div>\n            <div class=\"spinner\">\n                <div class=\"rect1\"></div>\n                <div class=\"rect2\"></div>\n                <div class=\"rect3\"></div>\n                <div class=\"rect4\"></div>\n                <div class=\"rect5\"></div>\n            </div>\n        </div>\n    ";
}
exports.generateProgressHtmlView = generateProgressHtmlView;
function generateHistoryListContainer(entries, entriesHtml, canGoPrevious, canGoNext) {
    var prevHref = canGoPrevious ? encodeURI('command:git.logNavigate?' + JSON.stringify(['previous'])) : '#';
    var nextHref = canGoNext ? encodeURI('command:git.logNavigate?' + JSON.stringify(['next'])) : '#';
    return "\n        <div id=\"log-view\" class=\"list-group\">\n            <svg xmlns=\"http://www.w3.org/2000/svg\"></svg>\n            <div id=\"commit-history\">\n                " + entriesHtml + "\n                <div id=\"history-navbar\">\n                    <ul class=\"navbar\">\n                        <li class=\"navbar-item previous " + (canGoPrevious || 'disabled') + "\">\n                            <a href=\"" + prevHref + "\" class=\"navbar-link\">\n                                <i class=\"octicon octicon-chevron-left\"></i>\n                                <span>Previous</span>\n                            </a>\n                        </li>\n                        <li class=\"navbar-item next " + (canGoNext || 'disabled') + "\">\n                            <a href=\"" + nextHref + "\" class=\"navbar-link\">\n                                <span>Next</span>\n                                <i class=\"octicon octicon-chevron-right\"></i>\n                            </a>\n                        </li>\n                    </ul>\n                </div>\n                <div class=\"json entries hidden\">" + he_1.encode(JSON.stringify(entries)) + "</div>\n            </div>\n        </div>\n\n        <div id=\"details-view\" class=\"hidden\">\n            <a class=\"close-btn\"><i class=\"octicon octicon-x\"></i></a>\n            <h1 class=\"commit-subject\">Merged Pull request from some bug fix area</h1>\n            <div class=\"commit-author\">\n                <span class=\"name hint--right hint--rounded hint--bounce\" aria-label=\"don.jayamanne@yahoo.com\" title=\"don.jayamanne@yahoo.com\">Don Jayamanne</span>\n                <span class=\"timestamp\">on Feb 22th 2016, 12:21:43 am</span>\n            </div>\n            <div class=\"commit-body\">This is the body and we can have a lot of content in here</div>\n            <div class=\"commit-notes\">These are the notes and we can have a lot of content in here</div>\n            <ul class=\"committed-files\">\n                <div class=\"diff-row\">\n                    <span class=\"diff-stats hint--right hint--rounded hint--bounce\" aria-label=\"2 additions & 1 deletion\">\n                        <span class=\"diff-count\">3</span>\n                        <span class=\"diff-block\"></span>\n                        <span class=\"diff-block\"></span>\n                        <span class=\"diff-block\"></span>\n                        <span class=\"diff-block\"></span>\n                        <span class=\"diff-block\"></span>\n                    </span>\n                    <div class=\"file-name-cnt\">\n                        <span class=\"file-name\">resources/iframeContent.ts</span>\n                        <a class=\"file-name\">resources/iframeContent.ts</a>\n                    </div>\n                    <div class=\"dropdown hidden\">\n                        <span>&nbsp;[Test]</span>\n                        <div class=\"dropdown-content\">\n                            <a href=\"{encodeURI('command:python.runUnitTest?' + JSON.stringify([testType, testFileSuite.rawName]))}\">Run this test</a>\n                            <a href=\"{encodeURI('command:python.runUnitTest?' + JSON.stringify([testType, testFileSuite.rawName]))}\">Run this test</a>\n                        </div>\n                    </div>\n                </div>\n            </ul>\n        </div>\n    ";
}
function generateHistoryHtmlView(entries, canGoPrevious, canGoNext) {
    var entriesHtml = entries.map(function (entry, entryIndex) {
        return "\n            <div class=\"log-entry\">\n                <div class=\"media right\">\n                    <div class=\"media-image\">\n                        <div class=\"commit-hash-container\">\n                            <div class=\"copy-button\">\n                                <span class=\"btn clipboard hint--bottom hint--rounded hint--bounce\"\n                                    data-clipboard-text=\"" + entry.sha1.full + "\"\n                                    aria-label=\"Copy the full SHA\"\n                                >\n                                    <i class=\"octicon octicon-clippy\"></i>\n                                    <a class=\"clipboard-link\" href=\"" + encodeURI('command:git.copyText?' + JSON.stringify([entry.sha1.full])) + "\"></a>\n                                </span>\n                            </div>\n                            <div class=\"commit-hash\">\n                                <span class=\"sha-code short\" data-entry-index=\"" + entryIndex + "\" aria-label=\"" + entry.sha1.short + "\">" + entry.sha1.short + "</span>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"media-content\">\n                        <a class=\"commit-subject-link\">" + he_1.encode(entry.subject) + "</a>\n                        <div class=\"commit-subject\" data-entry-index=\"" + entryIndex + "\">" + he_1.encode(entry.subject) + "</div>\n                        <div class=\"commit-author\">\n                            <span class=\"name hint--right hint--rounded hint--bounce\" aria-label=\"" + entry.author.email + "\">" + he_1.encode(entry.author.name) + "</span>\n                            <span class=\"timestamp\">on " + entry.author.localisedDate + "</span>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        ";
    }).join('');
    return generateHistoryListContainer(entries, entriesHtml, canGoPrevious, canGoNext);
}
exports.generateHistoryHtmlView = generateHistoryHtmlView;
//# sourceMappingURL=htmlGenerator.js.map