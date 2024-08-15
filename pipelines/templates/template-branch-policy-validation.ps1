param($targetBranchName, $allowedSourceBranchName, $sourceBranch)  

if ($sourceBranch -ieq $allowedSourceBranchName -or $sourceBranch -ieq "refs/heads/$allowedSourceBranchName") {
    Write-Host "Source branch '$sourceBranch' is allowed for target branch '$targetBranchName'."
} else {
    Throw "Source branch '$sourceBranch' is not allowed. Only the '$allowedSourceBranchName' branch is allowed for '$targetBranchName'."
    exit 1
}