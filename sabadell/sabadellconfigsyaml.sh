#! /bin/bash

KUBEFILESPATH=~/.kube

setKubeconfig (){
    echo "### Run the command below in your terminal ###"
    echo "export KUBECONFIG="${KUBEFILESPATH}/${KUBEFILE}
    #export KUBECONFIG=${KUBEFILESPATH}/${KUBEFILE}
    exit 0
}


echo "Select the kubeconfig file to use:"

kubefiles=("ale01-bsi-005-k01.yml-> Frontend Alestra" "ale01-bsi-006-k01.yml -> Backend Alestra" "tri01-bsi-007-k01.yml -> Frontend Triara" "tri01-bsi-008-k01.yml -> Backend Triara" "onPrem-dev-uat-k8s.yml -> DevOps Cluster OnPremise" "onp-bsi-bsi-0001.yml -> Cluster Cuenta Digital")

select item in "${kubefiles[@]}"
do
    case ${item} in
        "ale01-bsi-005-k01.yml-> Frontend Alestra")
            KUBEFILE="ale01-bsi-005-k01.yml"
            break
            ;;
        "ale01-bsi-006-k01.yml -> Backend Alestra")
             KUBEFILE="ale01-bsi-006-k01.yml"
             break
             ;;
        "tri01-bsi-007-k01.yml -> Frontend Triara")
            KUBEFILE="tri01-bsi-007-k01.yml"
            break
            ;;
        "tri01-bsi-008-k01.yml -> Backend Triara")
            KUBEFILE="tri01-bsi-008-k01.yml"
            break
            ;;
        "onPrem-dev-uat-k8s.yml -> DevOps Cluster OnPremise")
            KUBEFILE="onPrem-dev-uat-k8s.yml"
            break
            ;;
        "onp-bsi-bsi-0001.yml -> Cluster Cuenta Digital")
            KUBEFILE="onp-bsi-bsi-0001.yml"
            break
            ;;
        *) echo "invalid option $REPLY";;

    esac
done

# Description: Get global variables and echo the export command to user
# Input: Get global variables.
# Output: Echo export command for the choosen kubeconfig files
setKubeconfig
